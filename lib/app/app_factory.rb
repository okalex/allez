module Allez
  class AppFactory

    def self.make_app(path, port)
      return Allez::PHPApp.new(path, port) if Allez::PHPApp.is_php?(path)
      return Allez::RackApp.new(path, port) if Allez::RackApp.is_rack?(path)
      return Allez::NodeApp.new(path, port) if Allez::NodeApp.is_node?(path)
      return Allez::BaseApp.new(path, port)
    end

  end
end
