require 'browsercms'
module BcmsKcfinder
  class Engine < ::Rails::Engine
    isolate_namespace BcmsKcfinder
		include Cms::Module
  end
end
