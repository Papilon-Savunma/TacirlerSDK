#
# Be sure to run `pod lib lint TacirlerSDK.podspec' to ensure this is a
# valid spec before submitting.

Pod::Spec.new do |s|
  s.name             = 'TacirlerSDK'
  s.version          = '0.1.9'
  s.summary          = 'KYC process for Tacirler Yatirim.'

  s.homepage         = 'https://github.com/Papilon-Savunma/TacirlerSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '' => '' }
  s.source           = { :git => 'https://github.com/Papilon-Savunma/TacirlerSDK.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.swift_versions = '5.0'

  s.vendored_frameworks = 'TacirlerSDK.framework'

  s.source_files = 'TacirlerSDK/Classes/**/*'

  s.resource_bundles = { 'TacirlerSDK' => ['TacirlerSDK/Assets/*.{png,pdf,pem}'] }
  
  s.frameworks = 'UIKit', 'AVFoundation'
  s.dependency 'SwiftyJSON'
  s.dependency "OpenSSL-Universal", '1.1.180'
  s.dependency 'BulletinBoard'
  s.dependency 'JitsiMeetSDK', '~> 5.0.0'
  s.dependency 'Socket.IO-Client-Swift', '~> 16.0.1'


end
