# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "geometry/version"

Gem::Specification.new do |spec|
  spec.name          = 'geometry'
  spec.version       = Geometry::VERSION
  spec.authors       = ["Vamshi Palreddy"]
  spec.email         = ["vamshi29292@gmail.com"]
  spec.summary       = %q{Quintype's Bootcamp TDD Problem Set}
  spec.description   = %q{"It does simple geometry operations"}
  spec.homepage      = "https://github.com/vamshi29292/bootcamp-geometry"
  spec.license       = "MIT"
end
