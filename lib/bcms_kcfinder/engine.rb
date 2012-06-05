require 'browsercms'

module BcmsKcfinder
  class Engine < ::Rails::Engine
    isolate_namespace BcmsKcfinder
    include Cms::Module


    config.to_prepare do
      Cms::Section.send(:include, BcmsKcfinder::FinderExtension)
      Cms::Attachment.send(:include, BcmsKcfinder::Attachment::Linkable)
      Cms::Page.send(:include, BcmsKcfinder::Page::Linkable)

    end
  end
end


module BcmsKcfinder
  module Page
    module Linkable
      def link_to_path
        path
      end
    end
  end

  module Attachment
    module Linkable
      def name
        self.data_file_name
      end

      def file_size
        data_file_size
      end

      def link_to_path
        url
      end

    end
  end
  module FinderExtension
    LINKABLE_TYPES = ["Cms::Page", "Cms::Attachment"]

    def linkable_children
      child_pages = self.node.children.collect do |section_node|
        section_node.node if LINKABLE_TYPES.include?(section_node.node_type)
      end
      child_pages.compact
    end
  end
end