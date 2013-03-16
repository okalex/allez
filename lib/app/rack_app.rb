module Allez
  class RackApp < Allez::BaseApp

    def type
      'rack'
    end

    def start_file
      return 'config.ru' if File.exist?("#{path}/config.ru")
      nil
    end

    def start
      `bundle exec rackup #{path}/#{start_file} -p #{port}` unless start_file.nil?
    end

    def self.is_rack?(path)
      return true if File.exist?("#{path}/config.ru")
      false
    end

  end
end
