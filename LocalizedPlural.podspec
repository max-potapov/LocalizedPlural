Pod::Spec.new do |s|
  s.name             = 'LocalizedPlural'
  s.version          = '0.1.0'
  s.summary          = 'Swift version of TTTLocalizedPluralString.'
  s.description      = 'String extension for plurals localization.'
  s.homepage         = 'https://github.com/wacumov/LocalizedPlural'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mikhail Akopov' => 'mikhail.akopov.ios@gmail.com' }
  s.source           = { :git => 'https://github.com/wacumov/LocalizedPlural.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'LocalizedPlural/Sources/**/*'
end
