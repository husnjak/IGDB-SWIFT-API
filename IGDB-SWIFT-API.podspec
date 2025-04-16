Pod::Spec.new do |s|
  s.name                  = 'IGDB-SWIFT-API'
  s.version               = ENV['LIB_VERSION'] || '0.5.1'
  s.summary               = 'Wrapper for IGDBs API written in Swift.'
  s.description           = 'A Swift wrapper for the IGDB.com Free Video Game Database API.'
  s.documentation_url     = 'https://api-docs.igdb.com'
  s.homepage             = 'https://github.com/husnjak/IGDB-API-SWIFT'
  s.license              = { :type => 'MIT', :file => 'LICENSE' }
  s.author               = { 'Filip Husnjak' => 'filip@igdb.com' }
  s.source               = { :git => 'https://github.com/husnjak/IGDB-API-SWIFT.git', :tag => s.version.to_s }
  
  # Align platform versions with deployment targets
  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = '10.15'
  s.watchos.deployment_target = '7.0'
  
  s.swift_version        = '5.0'
  s.source_files         = 'Sources/IGDB-SWIFT-API/**/*.swift'

  s.dependency 'SwiftProtobuf', '~> 1.29.0'

end
