Pod::Spec.new do |s|
  s.name         = "GiniVisionSDK"
  s.version      = "0.91.24"
  s.summary = 'Computer Vision Framework for detection and scanning of documents.'
  s.license = { :type => 'Commercial', :file => "GiniVisionFramework-#{s.version}/LICENSE" }
  s.social_media_url = 'https://twitter.com/gini'
  s.authors = { 'Gini GmbH' => 'info@gini.net' }
  s.homepage = 'http://www.gini.net'
  s.source = { :http => "https://#{ENV['GINI_USER']}:#{ENV['GINI_PASSWORD']}@www.gini.net/partner/downloads/GiniVisionFramework-#{s.version}.zip"}
  s.resource_bundle = { 'GiniVision' => 'GiniVision.bundle/*' }
  s.requires_arc = true
  s.platform = :ios, "7.0"
  s.vendored_frameworks = "GiniVisionFramework-#{s.version}/GiniVision.framework"
  s.dependency 'OpenCV', '2.4.8'
  s.frameworks = 'AssetsLibrary', 'CoreMedia'
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => "'${PODS_ROOT}/GiniVision/GiniVisionFramework-#{s.version}'" }
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/Headers/GiniVision' }
end

