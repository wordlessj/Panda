Pod::Spec.new do |s|
  s.name             = 'Panda'
  s.version          = '2.0.0'
  s.summary          = 'Create view hierarchies declaratively.'
  s.homepage         = 'https://github.com/wordlessj/Panda'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = 'Javier Zhang'
  s.source           = { :git => 'https://github.com/wordlessj/Panda.git', :tag => s.version.to_s }
  s.swift_version    = '5.0'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Sources/**/*.swift'
end
