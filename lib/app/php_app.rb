module Allez
  class PHPApp < Allez::BaseApp

    def type
      'php'
    end

    def start
      `php -S localhost:#{port} -t #{path}`
    end

    def self.is_php?(path)
      return true if File.exist?("#{path}/index.php")
      false
    end

  end
end
