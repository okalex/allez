require 'yaml'

module Allez
  class Config

    def initialize(filename)
      @configs = {}
      @configs = YAML.load_file(filename) if File.exists?(filename)
    end

    def [](key)
      @configs[key]
    end

  end
end
