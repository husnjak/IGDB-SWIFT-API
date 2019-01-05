#
# Be sure to run `pod lib lint IGDB-SWIFT-API.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IGDB-SWIFT-API'
  s.version          = '0.1.7'
  s.summary          = 'Wrapper for IGDBs API written in Swift.'

  s.description      = "A Swift wrapper for the IGDB.com Free Video Game Database API."

  s.homepage         = 'https://github.com/husnjak/IGDB-API-SWIFT'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'husnjak' => 'filip@igdb.com' }
  s.source           = { :git => 'https://github.com/husnjak/IGDB-API-SWIFT.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.swift_version = '4.0'
  s.source_files = 'IGDB-SWIFT-API/Classes/**/*'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'SwiftProtobuf', '~> 1.0'
  s.dependency 'Just'
end
