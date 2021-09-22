Pod::Spec.new do |s|
  s.name             = 'GiniPayBank'
  s.version          = '1.0.3'
  s.summary          = 'Computer Vision Library for scanning documents.'

  s.description      = <<-DESC
Gini Pay provides the instant payment solution that enables consumers to check out and seamlessly pay directly from their bank app.

The Gini Pay Bank SDK for iOS provides functionality to capture documents with mobile phones, accurate line item extraction enables the user to uncheck the items they do not want to pay and automatically calculates the new amountToPay.
                       DESC

  s.homepage         = 'https://www.gini.net/en/developer/'
  s.license          = { :type => 'Private', :file => 'LICENSE' }
  s.author           = { 'Gini GmbH' => 'hello@gini.net' }
  s.frameworks       = 'AVFoundation', 'CoreMotion', 'Photos'
  s.source           = { :git => 'https://github.com/gini/gini-pay-bank-sdk-ios.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/gini'
  s.swift_version    = '5.0'
  s.ios.deployment_target = '10.2'
  
  s.default_subspec = 'Core'

  s.subspec 'Core' do |core|
    core.source_files = 'GiniPayBank/Classes/**/*'
    core.resources = 'GiniPayBank/Assets/*'
    core.dependency "GiniCapture/Networking"
    core.dependency 'GiniPayApiLib/DocumentsAPI', '>= 1.0.3'
    core.dependency 'GiniPayApiLib/Pinning', '>= 1.0.3'
  end

  s.test_spec 'Tests' do |test_spec|
    test_spec.source_files = 'GiniPayBank/Tests/*.swift'
    test_spec.resources = 'GiniPayBank/Tests/Assets/*'
    test_spec.requires_app_host = true
  end

end
