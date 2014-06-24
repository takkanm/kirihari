require "kirihari/version"
require 'erb_with_hash'
require 'yaml'

class Kirihari
  attr_accessor :binding_hash
  def initialize(yaml_path_or_hash, binding_hash = {})
    @template_hash = yaml_path_or_hash.is_a?(Hash) ? yaml_path_or_hash : YAML.load(File.read(yaml_path_or_hash))
    @binding_hash = binding_hash
  end

  def [](key)
    if @template_hash[key].is_a? String
      ERB.new(@template_hash[key]).result_with_hash(@binding_hash)
    else
      Kirihari.new(@template_hash[key], @binding_hash)
    end
  end
end
