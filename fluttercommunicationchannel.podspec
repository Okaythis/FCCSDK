Pod::Spec.new do |spec|
  spec.name         = 'FlutterCommunicationChannel'
  spec.version      = '1.0.9'
  spec.license      = { :type => 'Apache 2.0', :file => 'LICENSE' }
  spec.homepage     = 'https://okaythis.com'
  spec.author       = { 'Okay This' => 'hello@okaythis.com' }
  spec.summary      = 'Communication Channel'
  spec.source       = { :git => "https://github.com/Okaythis/FCCSDK.git", :tag => "#{spec.version}" }
  spec.source_files  = "FlutterCommunicationChannel/**/*.{h,m,swift}"
  spec.requires_arc = true
  spec.dependency 'FccAbstractCore', '1.0.8'
  spec.ios.deployment_target = '10.0'
  spec.xcconfig = { 'SWIFT_INSTALL_OBJC_HEADER' => 'NO' }
  spec.xcconfig = { 'DEFINES_MODULE' => 'TRUE' }
  spec.swift_versions = '5.0'
end
