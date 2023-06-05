#
# Be sure to run `pod lib lint QRCodeSwiftScanner.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'QRCodeSwiftScanner'
  s.version          = '0.1.0'
  s.summary          = 'Copy of QRCodeScanner.'

  s.homepage         = 'https://github.com/gauravcredenza3/QRCodeSwiftScanner'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Sandy' => 'sandy@macrodemic.com' }
  s.source           = { :git => 'https://github.com/gauravcredenza3/QRCodeSwiftScanner.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.source_files = 'QRCodeSwiftScanner/Classes/**/*.swift'
  s.frameworks = 'UIKit', 'CoreGraphics', 'AVFoundation'
  s.swift_version = "5.0.0"
end
