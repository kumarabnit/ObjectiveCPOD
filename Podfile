# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'ObjectiveCPOD' do
  # Uncomment the next line if you're using Swift or would like to use dynamic frameworks
use_frameworks!
pod 'JVFloatLabeledTextField'
pod 'TPMGCommon', :git => 'https://github.kp.org/TPMG/TPMGCommon.git'
pod 'TestCrossProPOD', :git => 'https://github.com/kumarabnit/TestCrossProPOD.git'

  # Pods for ObjectiveCPOD
  dynamic_frameworks = ['TPMGCommon']
  
  # make all the other frameworks into static frameworks by overriding the static_framework? function to return true
  pre_install do |installer|
      installer.pod_targets.each do |pod|
          if !dynamic_frameworks.include?(pod.name)
              puts "Overriding the static_framework? method for #{pod.name}"
              def pod.static_framework?;
              true
          end
      end
  end
 end
end
