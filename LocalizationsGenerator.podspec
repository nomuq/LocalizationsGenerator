Pod::Spec.new do |s|
    s.name             = 'LocalizationsGenerator'
    s.version          = '1.0.5'
    s.summary          = 'Auto Localizations Generator , intended to end the constant problems that localizations present developers.'
    s.homepage         = 'https://github.com/satishbabariya/LocalizationsGenerator'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Satish Babariya' => 'satish.babariya@gmail.com' }
    s.source           = { :git => 'https://github.com/satishbabariya/LocalizationsGenerator.git', :tag => s.version.to_s }
    s.ios.deployment_target = '8.0'

    s.static_framework = true
    s.cocoapods_version = '>= 1.4.0'
    s.swift_version = '4.0'   
    s.frameworks = 'Foundation'
    

    s.default_subspec = "Core"
    s.subspec "Core" do |ss|
        ss.source_files = 'LocalizationsGenerator/Localizations.swift'
        ss.preserve_paths = 'LocalizationsGenerator.swift','run'
       ss.script_phase = {
        :name => "Permission",
        :script => 'chmod +x "${PODS_ROOT}/LocalizationsGenerator/run"',
        :execution_position => :before_compile
    }
    end
    s.subspec "Auto" do |ss|
        ss.source_files = 'LocalizationsGenerator/Localizations.swift'
        ss.preserve_paths = 'LocalizationsGenerator.swift','autorun'
        ss.script_phases = [
            {
                :name => "AutoPermission",
                :script => 'chmod +x "${PODS_ROOT}/LocalizationsGenerator/autorun"',
                :execution_position => :before_compile
               },
               {
                :name => "AutoPermission",
                :script => '"${PODS_ROOT}/LocalizationsGenerator/autorun"',
                :execution_position => :before_compile
               }
        ]
    end
        
end
