
Pod::Spec.new do |s|
  s.name = 'TacirlerSDK'
  s.version = '0.1.2'
  s.summary = 'KYC process for Tacirler Yatirim.'

  s.homepage = 'https://github.com/Papilon-Savunma/TacirlerSDK'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { '' => '' }
  s.source = { :git => 'https://github.com/Papilon-Savunma/TacirlerSDK.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.swift_versions = '5.0'

  s.resource_bundles = { 'TacirlerSDK' => 'TacirlerSDK.bundle' }

  s.vendored_frameworks = 'TacirlerSDK.framework'

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.frameworks = 'UIKit', 'AVFoundation'
  s.dependency 'SwiftyJSON'
  s.dependency 'PapilonMRZScanneriOS', '1.0.6'
  s.dependency "OpenSSL-Universal", '1.1.180'
  s.dependency 'BulletinBoard'
  s.dependency 'JitsiMeetSDK', '~> 4.1.0'
#  s.dependency 'Socket.IO-Client-Swift', '~> 16.0.1'

end
