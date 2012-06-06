$:.push File.expand_path("../lib", __FILE__)
require "bcms_kcfinder/version"

Gem::Specification.new do |s|

  s.name = "bcms_kcfinder"
  s.version = BcmsKcfinder::VERSION
  s.authors = ["BrowserMedia"]
  s.email = ["github@browsermedia.com"]
  s.homepage = "http://github.com/browsermedia/bcms_kcfinder"
  s.summary = "A BrowserCMS module which integrates KCFinder."
  s.description = "A BrowserCMS module that allows users to browse, upload and link to files while editing content. Integrates the KCFinder library with CKEditor."

  s.files = Dir["{app,config,db,lib,vendor}/**/*"]
  s.files += Dir["Gemfile", "LICENSE.txt", "COPYRIGHT.txt", "GPL.txt"]
  s.test_files += Dir["test/**/*"]
  s.test_files -= Dir["test/dummy/**/*"]

  s.add_dependency "browsercms", "~> 3.5.2"

end
