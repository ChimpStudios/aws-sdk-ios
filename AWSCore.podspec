Pod::Spec.new do |s|

  s.name         = 'AWSCore'
  s.version      = '2.3.5'
  s.summary      = 'Amazon Web Services SDK for iOS.'

  s.description  = 'The AWS SDK for iOS provides a library, code samples, and documentation for developers to build connected mobile applications using AWS.'

  s.homepage     = 'http://aws.amazon.com/sdkforios'
  s.license      = 'Apache License, Version 2.0'
  s.author       = { 'Amazon Web Services' => 'amazonwebservices' }
  
  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.11'
  
  s.source       = { :git => 'https://github.com/aws/aws-sdk-ios.git',
                     :tag => s.version}
                     
  s.ios.frameworks   = 'UIKit', 'Foundation', 'SystemConfiguration'
  s.osx.frameworks   = 'AppKit', 'Foundation', 'SystemConfiguration'
  
  s.libraries    = 'z', 'sqlite3'
  s.requires_arc = true

  s.source_files = 'AWSCore/*.{h,m}', 'AWSCore/**/*.{h,m}'
  s.private_header_files = 'AWSCore/XMLDictionary/**/*.h', 'AWSCore/XMLWriter/**/*.h', 'AWSCore/FMDB/AWSFMDatabase+Private.h', 'AWSCore/Mantle/extobjc/*.h'
end
