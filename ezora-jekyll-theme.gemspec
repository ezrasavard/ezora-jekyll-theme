# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "ezora-jekyll-theme"
  spec.version       = "0.1.3"
  spec.authors       = ["Ezra Savard"]
  spec.email         = ["git@ezrasavard.com"]

  spec.summary       = %q{Ezora is a responsive Jekyll theme with a clean single column layout, nifty text overlays for images and a mobile friendly navigation bar. In order to use this theme, you will need to symlink a "stylesheets" directory to the stylesheets directory in the gem bundle directory. a sample of this theme is available at "http://www.ezrasavard.com/ezorademo"}
  spec.homepage      = "http://www.github.com/ezrasavard/ezora-jekyll-theme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select do |f|
  f.match(%r{favicon\.png|stylesheets|^(_(includes|layouts|sass)/|(_config|LICENSE|README|index)((\.(txt|md|markdown|yml|html)|$)))}i)
  end
  puts spec.files

  spec.add_development_dependency "jekyll", "~> 3.2"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
