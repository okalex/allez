# Allez - Multi-language dev app launcher

Allez (pronounced aah-lay) is a command-line tool to launch local web apps
written in just about any language. To start an application, simply navigate 
to the app directory and type `allez`. This will start the server on 
[http://localhost:8080](http://localhost:80) by default.

**NOTE:** This is still very new. I've only spent a couple hours on it so far, 
but I will improve upon it in the future. Feel free to submit a pull request 
if you'd like to contribute. Some long-term goals for the project:

* Install runtime environments and servers by running `allez install`
* Support for .allez file in app directory for default app configuration
* Language version manager integration (rvm/rbenv, nvm, etc.)
* Additional languages: Python, Java, Go, Erlang
* Make it a gem

## Options

* --port=<number>, -p <number> Specify a different port number
* --dir=<app dir>, -d <app dir> Specify an app directory other than the current working directory

## Supported languages

* **PHP** - Allez looks for an index.php file
* **Ruby/Rack** - Allez looks for a config.ru file
* **Node** - Allez looks for app.js or server.js files
* **Static** - All other types will currently be served as static files. This allows you to serve static
  sites through a development server easily
* More coming soon…

## Installation

Installation is currently rudimentary. Just clone allez by running `git clone 
git@github.com:okalex/allez.git` and add `allez/bin` to your path. You will 
also need to `cd` to the allez directory and run `bundle install`. This will be 
improved in the future.
