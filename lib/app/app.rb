Dir[File.expand_path('./*.rb', File.dirname(__FILE__))].each do |file|
  require file
end

module Allez
  class App

    def initialize(dir, port)
      @app = Allez::AppFactory::make_app(dir, port)
    end

    def start
      puts "Starting #{@app.type} server in #{@app.path} on port #{@app.port}"
      @app.start
    end

  end
end
