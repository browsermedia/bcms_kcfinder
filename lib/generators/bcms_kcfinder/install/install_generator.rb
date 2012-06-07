require 'cms/module_installation'

class BcmsKcfinder::InstallGenerator < Cms::ModuleInstallation
  add_migrations_directory_to_source_root __FILE__
  
  # This module has no migrations, seed or routes as of now, so this install file is simple.
  # Keep these commented out for now in case they get added later

  #def copy_migrations
  #  rake 'bcms_kcfinder:install:migrations'
  #end

  # Uncomment to add module specific seed data to a project.
  #def add_seed_data_to_project
  #  copy_file "../bcms_kcfinder.seeds.rb", "db/bcms_kcfinder.seeds.rb"
  #  append_to_file "db/seeds.rb", "load File.expand_path('../bcms_kcfinder.seeds.rb', __FILE__)\n"
  #end
  
  def add_routes
    mount_engine(BcmsKcfinder)
  end
    
end