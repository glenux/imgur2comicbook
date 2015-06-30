# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'imgur2comicbook/version'

Gem::Specification.new do |spec|
  spec.name          = "imgur2comicbook"
  spec.version       = Imgur2ComicBook::VERSION
  spec.authors       = ["Glenn Y. Rolland"]
  spec.email         = ["glenn.rolland@netcat.io"]
  spec.summary       = %q{Archive imgur albums.}
  spec.description   = %q{Archive imgur albums.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "nokogiri"
  spec.add_runtime_dependency "thor"
  #spec.add_runtime_dependency "html2haml"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "rb-readline"
end
