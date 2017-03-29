Pod::Spec.new do |s|

  s.name         = "Cooking"
  s.version      = "1.1.0"
  s.summary      = "Cook Classes/Structs with the taste you love."
  s.description  = <<-DESC
    Cook classes/structs with the taste you love. Naming your extensions in the Swifty way people love.
    The library helps you name your extension in the way as `label.rx.text` other than 'label.rx_text'.
                   DESC
  s.homepage     = "https://github.com/ShaneQi/Cooking"
  s.license      = { :type => "Apache License, Version 2.0", :file => "LICENSE" }
  s.author             = { "Shane Qi" => "qizengtai@gmail.com" }
  s.social_media_url   = "http://twitter.com/ShadowQi"
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/ShaneQi/Cooking.git", :tag => "#{s.version}" }
  s.source_files  = "Sources"

end
