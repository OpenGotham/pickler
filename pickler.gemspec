Gem::Specification.new do |s|
  s.name                = "pickler"
  s.version             = "0.1.8"

  s.summary             = "PIvotal traCKer Liaison to cucumbER"
  s.description         = "Synchronize between Cucumber and Pivotal Tracker"
  s.authors             = ["Tim Pope"]
  s.email               = "ruby@tpope.i"+'nfo'
  s.homepage            = "http://github.com/tpope/pickler"
  s.default_executable  = "pickler"
  s.executables         = ["pickler"]
  s.files               = [
    "README.rdoc",
    "MIT-LICENSE",
    "pickler.gemspec",
    "bin/pickler",
    "lib/pickler.rb",
    "lib/pickler/feature.rb",
    "lib/pickler/runner.rb",
    "lib/pickler/tracker.rb",
    "lib/pickler/tracker/project.rb",
    "lib/pickler/tracker/story.rb",
    "lib/pickler/tracker/iteration.rb",
    "lib/pickler/tracker/note.rb"
  ]
  s.add_runtime_dependency("crack", [">= 0.1.8"])
  s.add_runtime_dependency("cucumber", [">=  0.10.0"])
  s.add_development_dependency("rspec", [">=  2.0.0"])
  s.add_development_dependency("fakeweb", [">= 1.3.0"])
end
