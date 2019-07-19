# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "xcpretty-azure-pipelines-formatter"
  spec.version       = "1.0.0"
  spec.authors       = ["Jonathan Bailey"]
  spec.email         = [""]
  spec.description   =
  %q{
  Formatter for xcpretty customized to provide pretty output on Azure Pipelines
  }
  spec.summary       = %q{xcpretty custom formatter for Azure Pipelines}
  spec.homepage      = "https://github.com/jon889/xcpretty-azure-pipelines-formatter"
  spec.license       = "MIT"
  spec.required_ruby_version = "~> 2.0"
  spec.files         = [
  	"README.md",
  	"LICENSE",
  	"lib/azure_pipelines_formatter.rb",
  	"bin/xcpretty-azure-pipelines-formatter"]
  spec.executables   = ["xcpretty-azure-pipelines-formatter"]
  spec.require_paths = ["lib"]
  spec.add_dependency "xcpretty", "~> 0.2", ">= 0.0.7"
  spec.add_development_dependency "bundler", "~> 1.3"
end
