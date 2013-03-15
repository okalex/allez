class App

  def initialize(dir, port)
    @dir = dir
    @port = port
    @type, @start_file = detect_app_type
  end

  def start
    puts "Starting #{@type} server in #{@dir} on port #{@port}"
    case @type
    when 'php'
      `php -S localhost:#{@port} -t #{@dir}`
    when 'rack'
      `bundle exec rackup #{@dir}/#{@start_file} -p #{@port}`
    when 'node'
      `node #{@dir}/#{@start_file}`
    when 'static'
      config_path = File.expand_path('../config', File.dirname(__FILE__))
      `RACK_ROOT="#{@dir}" thin -R #{config_path}/static.ru start -p #{@port}`
    end
  end

  private

  def detect_app_type
    files = Dir.entries(@dir)

    return 'php', 'index.php' if files.include?('index.php')
    return 'rack', 'config.ru' if files.include?('config.ru')
    return 'node', 'app.js' if files.include?('app.js')
    return 'node', 'server.js' if files.include?('server.js')
    return 'static', nil
  end

end
