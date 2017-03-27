Pod::Spec.new do |s|

  s.name         = "Cooking"
  s.version      = "1.0.0"
  s.summary      = "Cook Classes/Structs with the taste you love."
  s.description  = <<-DESC
    Cook Classes/Structs with the taste you love!
                   DESC
  s.homepage     = "https://github.com/ShaneQi/Cooking"
  s.license      = { :type => "Apache License, Version 2.0", :file => "LICENSE" }
  s.author             = { "Shane Qi" => "qizengtai@gmail.com" }
  s.social_media_url   = "http://twitter.com/ShadowQi"
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/ShaneQi/Cooking.git", :tag => "#{s.version}" }
  s.source_files  = "Sources"

end
