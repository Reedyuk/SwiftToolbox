source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '9.0'
use_frameworks!
inhibit_all_warnings!

def required_pods

pod 'ChameleonFramework/Swift', :git => 'https://github.com/ViccAlexander/Chameleon.git', :branch => 'swift3'

end

target "SwiftToolbox" do
    required_pods
    post_install do |installer|
        installer.pods_project.targets.each do |target|
            target.build_configurations.each do |config|
                if target.name == 'ChameleonFramework'
                    config.build_settings['SWIFT_VERSION'] = '3.0'
                end
            end
        end
    end
end

