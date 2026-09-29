Pod::Spec.new do |s|

s.authors = 'Azerion'
s.name = 'BlueStackBidMachineAdapter'
s.version = '6.1.0'
s.static_framework = true
s.license = 'MIT'
s.platform = :ios, '13.0'
s.summary = 'BlueStack BidMachine mediation adapter'
s.homepage = "https://developers.bluestack.app/"
s.swift_version = '5'

s.source = { :git => 'https://github.com/azerion/BlueStack-BidMachine-Adapter.git', :tag => "#{s.version}" }
s.documentation_url = 'https://developers.bluestack.app/ios/mediation/primairy/supported-networks#bidmachine'
s.vendored_frameworks = "BlueStackBidMachineAdapter.xcframework"
s.ios.deployment_target = '13.0'

s.dependency 'BlueStack-SDK', '>=6.1.0', '< 6.2.0'
s.dependency 'BidMachine', '3.7.1'

s.pod_target_xcconfig =
{
  'VALID_ARCHS' => 'arm64 arm64e armv7 armv7s x86_64',
  'VALID_ARCHS[sdk=iphoneos*]' => 'arm64 arm64e armv7 armv7s',
  'VALID_ARCHS[sdk=iphonesimulator*]' => 'arm64 arm64e x86_64',
  'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
}

end
