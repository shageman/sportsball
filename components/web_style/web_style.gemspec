Gem::Specification.new do |s|
  s.name        = "web_style"
  s.version     = "0.0.1"
  s.authors     = ["The CBRA Book"]
  s.summary     = "CBRA component"

  s.test_files = Dir["spec/**/*"]
  s.files = Dir["{app,config,db,lib}/**/*", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "4.1.9"
  s.add_dependency "slim-rails", "3.0.1"
  s.add_dependency "jquery-rails", "3.1.2"
end
