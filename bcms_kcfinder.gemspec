$:.push File.expand_path("../lib", __FILE__)
require "bcms_kcfinder/version"

Gem::Specification.new do |s|

  s.name        = "bcms_kcfinder"
  s.version     = BcmsKcfinder::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of BcmsKcfinder."
  s.description = "TODO: Description of BcmsKcfinder."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.files -= Dir['lib/tasks/module_tasks.rake']
  s.test_files = Dir["test/**/*"]

  s.add_dependency "browsercms", "~> 3.5.2"

end
