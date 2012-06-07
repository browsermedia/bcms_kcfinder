module BcmsKcfinder
  class BrowseController < Cms::BaseController

    # This API is mostly JSON, so CSRF shouldn't be an issue.
    protect_from_forgery :except => :upload
    
    layout 'bcms_kcfinder/application'
    before_filter :set_default_type
    before_filter :determine_current_section, :only=>[:init, :upload, :change_dir]

    def index
    end

    # At the start, the entire Sitemap tree has to be defined, though pages below the top level do not need to be included until a 'chDir'
    # command is issued.
    def init
      @section = Cms::Section.find_by_name_path("/")
      render :json => {tree: {name: "My Site",
                              readable: true,
                              writable: true,
                              removable: false,
                              current: true,
                              hasDirs: !@section.child_sections.empty?,
                              dirs: child_sections_to_dirs(@section)},
                       files: list_files(),
                       dirWritable: true}.to_json
    end

    def upload
      content_block = case params[:type].downcase
        when "files"
          create_new(Cms::FileBlock)
        when "images"
          create_new(Cms::ImageBlock)
      end
      render :text => content_block.path
    end

    def create_new(klass)
      uploaded_file = params[:upload].first
      f = klass.new(:name => uploaded_file.original_filename, :publish_on_save => true)
      a = f.attachments.build(:parent => @section,
                              :data_file_path => uploaded_file.original_filename,
                              :attachment_name => 'file',
                              :data => uploaded_file)
      f.save!
      f
    end

    # Change to a directory and return the files for that directory
    def change_dir
      render :json => {files: list_files(), dirWritable: true}.to_json
    end



    def command
      raise "Error: The command '#{params[:command]}' is not implemented yet."
    end

    private

    def determine_current_section
      unless params[:dir]
        params[:dir] = "My Site"
      end
      normalized_dir_name = params[:dir].gsub("My Site", "/")
      @section = Cms::Section.find_by_name_path(normalized_dir_name)
    end

    def set_default_type
      unless params[:type]
        params[:type] = "files"
      end
    end

    def list_files
      show = case params[:type]
               when "files"
                 @section.linkable_children
               when "images"
                 Cms::ImageBlock.by_section(@section)
               else
                 []
             end
      render_files(show)
    end

    def render_files(files)
      files.map do |file|
        {
            name: file.name,
            size: file.size_in_bytes,
            path: file.link_to_path,
            mtime: file.updated_at.to_i,
            date: file.created_at.strftime("%m/%d/%Y %I:%M %p"),
            readable: true,
            writeable: true,
            bigIcon: true,
            smallIcon: true,
            thumb: false,
            smallThumb: false
        }
      end
    end

    def child_sections_to_dirs(section)
      section.sections.map do |child|
        {
            name: child.name,
            readable: true,
            writable: true,
            removable: true,
            hasDirs: !child.child_sections.empty?,
            current: false,
            dirs: child_sections_to_dirs(child)
        }
      end
    end
  end
end
