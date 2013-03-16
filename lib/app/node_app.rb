module Allez
  class NodeApp < Allez::BaseApp

    def type
      'node'
    end

    def start_file
      if File.exist?("#{path}/app.js")
        'app.js'
      elsif File.exist?("#{path}/server.js")
        'server.js'
      else
        nil
      end
    end

    def start
      `node #{path}/#{start_file}` unless start_file.nil?
    end

    def self.is_node?(path)
      return true if File.exist?("#{path}/app.js")
      return true if File.exist?("#{path}/server.js")
      false
    end

  end
end
