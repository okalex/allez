module Allez
  class BaseApp

    attr_accessor :path, :port

    def initialize(path, port)
      @path = path
      @port = port
    end

    def type
      'static'
    end

    def start
      config_path = File.expand_path('../../config', File.dirname(__FILE__))
      `RACK_ROOT="#{path}" thin -R #{config_path}/static.ru start -p #{port}`
    end

  end
end
