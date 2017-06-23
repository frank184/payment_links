$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "payment_links/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "payment_links"
  s.version     = PaymentLinks::VERSION
  s.authors     = ["Frank"]
  s.email       = ["fbelanger@ackroo.com"]
  s.homepage    = ""
  s.summary     = "Summary of PaymentLinks."
  s.description = "Description of PaymentLinks."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.7.1"

  s.add_development_dependency "sqlite3"
end
