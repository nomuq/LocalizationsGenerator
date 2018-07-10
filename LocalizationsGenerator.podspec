Pod::Spec.new do |s|
    s.name             = 'LocalizationsGenerator'
    s.version          = '1.0.0'
    s.summary          = 'Auto Localizations Generator , intended to end the constant problems that localizations present developers.'
    s.homepage         = 'https://github.com/satishbabariya/LocalizationsGenerator'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Satish Babariya' => 'satish.babariya@gmail.com' }
    s.source           = { :git => 'https://github.com/satishbabariya/LocalizationsGenerator.git', :tag => s.version.to_s }
    s.ios.deployment_target = '8.0'
    s.source_files = 'LocalizationsGenerator/Localizations.swift'
    s.preserve_paths = 'LocalizationsGenerator/LocalizationsGenerator.swift'
    s.preserve_paths = 'LocalizationsGenerator/run'
    s.static_framework = true
    s.cocoapods_version = '>= 1.4.0'
    s.swift_version = '4.0'   
    s.frameworks = 'Foundation'
end