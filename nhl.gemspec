Gem::Specification.new do |s|
  s.name        = 'nhl'
  s.version     = '0.0.1'
  s.date        = '2012-06-21'
  s.summary     = "Gem for NHL"
  s.description = "A simple NHL gem"
  s.authors     = ["Aren Patel"]
  s.email       = ''
  s.files       = ["lib/nhl.rb"]
  s.homepage    = 'http://rubygems.org/gems/nhl'
  
  s.add_dependency('nokogiri', '~> 1.5.4') 
end