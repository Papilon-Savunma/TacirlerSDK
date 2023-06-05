Pod::Spec.new do |s|
  s.name             = 'TacirlerSDK'
  s.version          = '0.3.6'
  s.summary          = 'KYC process for Tacirler Yatirim.'

  s.homepage         = 'https://github.com/Papilon-Savunma/TacirlerSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '' => '' }
  s.source = { :git => 'https://github.com/Papilon-Savunma/TacirlerSDK.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.swift_versions = '5.0'

  s.vendored_frameworks = 'TacirlerSDK.framework'

  s.requires_arc = true
  
  s.frameworks = 'UIKit', 'AVFoundation'
  s.dependency 'SwiftyJSON'
  s.dependency "OpenSSL-Universal", '1.1.180'
  s.dependency 'BulletinBoard'
  s.dependency 'JitsiMeetSDK', '~> 5.0.0'
  s.dependency 'Socket.IO-Client-Swift'
end
