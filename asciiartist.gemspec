Gem::Specification.new do |s|
    s.name        = 'asciiartist'
    s.version     = '0.1.0'
    s.date        = '2019-04-14'
    s.summary     = "A nifty CLI that allows users to access ascii art from the command line!"
    s.description = "Spruce up your code base with Ascii Art available directly from the command line!"
    s.authors     = ["Allen Partlow"]
    s.email       = ['allenfp@gmail.com']  
    s.files       = ["bin/setup","bin/asciiartist","bin/console","config/environment.rb","asciiartist.gemspec","README.md","Rakefile","lib/asciiartist.rb","lib/art.rb","lib/cli.rb","lib/scraper.rb","gemfile","Gemfile.lock"]
    
    s.homepage    = ""
    s.license       = 'MIT'
    s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
    s.require_paths = ["lib"]

    s.add_development_dependency "bundler", "~> 1.10"
    s.add_development_dependency "rake", "~> 10.0"
    s.add_development_dependency "rspec", ">= 0"
    s.add_development_dependency "nokogiri", ">= 0"
    s.add_development_dependency "pry", ">= 0"
    
  end