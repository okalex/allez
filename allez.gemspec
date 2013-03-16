Gem::Specification.new do |s|
  s.name        = 'allez'
  s.version     = '0.0.1'
  s.date        = '2013-03-15'
  s.summary     = 'One-command-to-rule-them-all web app launcher'
  s.description = 'One-command-to-rule-them-all web app launcher'
  s.author      = 'Alex Parkinson'
  s.email       = 'okalex@gmail.com'
  s.homepage    = 'http://github.com/okalex/allez'

  s.executables   = 'allez'
  s.files         = Dir.glob("{config,lib}/**/*") + %w(README.md)
  s.bindir        = 'bin'
  s.require_path  = 'lib'
  s.platform      = Gem::Platform::RUBY
  s.extra_rdoc_files  = ['README.md']

  s.add_dependency 'rack'
  s.add_dependency 'thin'
  s.add_dependency 'trollop'
end
