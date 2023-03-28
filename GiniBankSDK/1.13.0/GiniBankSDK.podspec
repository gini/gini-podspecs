Pod::Spec.new do |spec|
  spec.name               = "GiniBankSDK"
  spec.version            = "1.13.0"
  spec.summary            = "Gini Bank SDK for iOS"
  spec.description        = "The Gini Bank SDK provides components for capturing, reviewing and analyzing photos of invoices and remittance slips."
  spec.homepage           = "gini.net"
  spec.documentation_url  = "https://developer.gini.net/gini-mobile-ios/GiniBankSDK/#{spec.version.to_s}/"
  spec.author             = "Gini GmbH"
  spec.license            = { :type => 'Private', :file => 'LICENSE' }
  spec.source             = { :http => "https://github.com/gini/gini-podspecs/blob/master/GiniBankSDK/#{spec.version.to_s}/GiniBankSDK-XCFrameworks.zip" }
  spec.swift_version      = "5.3"

  # Supported deployment targets
  spec.ios.deployment_target  = "12.0"

  # Published binaries
  spec.vendored_frameworks = "GiniBankSDK.xcframework", "GiniCaptureSDK.xcframework", "GiniBankAPILibrary.xcframework"
end