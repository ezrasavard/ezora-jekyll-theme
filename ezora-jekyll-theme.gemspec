# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "ezora-jekyll-theme"
  spec.version       = "0.1.0"
  spec.authors       = ["Ezra Savard"]
  spec.email         = ["git@ezrasavard.com"]

  spec.summary       = %q{Ezora is a responsive Jekyll theme with a clean single column layout, nifty text overlays for images and a mobile friendly navigation bar.}
  spec.homepage      = "http://www.github.com/ezrasavard/ezora-jekyll-theme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(_layouts|_includes|_sass|LICENSE|README)/i}) }

  spec.add_development_dependency "jekyll", "~> 3.2"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
