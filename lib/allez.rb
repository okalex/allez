require 'trollop'
require File.expand_path('./app/app', File.dirname(__FILE__))

opts = Trollop::options do
  opt :port, 'Port number', :short => '-p', :default => 8080
  opt :dir, 'App directory', :short => '-d', :default => Dir.pwd
end

app = Allez::App.new(opts[:dir], opts[:port])
app.start
