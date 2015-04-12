Gem::Specification.new do |s|
  s.name        = "games_ui"
  s.version     = "0.0.1"
  s.authors     = ["The CBRA Book"]
  s.summary     = "CBRA component"

  s.test_files = Dir["spec/**/*"]
  s.files = Dir["{app,config,db,lib}/**/*", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "4.1.9"
  s.add_dependency "slim-rails", "3.0.1"
  s.add_dependency "jquery-rails", "3.1.2"

  s.add_dependency "games"
  s.add_dependency "web_style"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "shoulda-matchers"
  s.add_development_dependency "database_cleaner"
  s.add_development_dependency "capybara"
end
