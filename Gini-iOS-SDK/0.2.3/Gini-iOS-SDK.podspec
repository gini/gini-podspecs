Pod::Spec.new do |s|
  s.name     = 'Gini-iOS-SDK'
  s.version  = '0.2.3'
  s.license  = 'MIT'
  s.summary  = 'An SDK for integrating the magical Gini technology into other apps.'
  s.homepage = 'https://github.com/gini/gini-sdk-ios'
  s.social_media_url = 'https://twitter.com/gini'
  s.authors  = { 'Gini GmbH' => 'info@gini.net' }
  s.source   = { :git => 'https://github.com/gini/gini-sdk-ios.git', :tag => s.version.to_s }
  s.documentation_url = 'http://developer.gini.net/gini-sdk-ios/'
  s.requires_arc = true
  s.platform     = :ios, "7.0"
  s.public_header_files = 'Gini-iOS-SDK/**/*.h'
  s.source_files = 'Gini-iOS-SDK'
  s.dependency "Bolts", "1.1.0"
end
