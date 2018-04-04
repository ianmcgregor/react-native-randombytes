require 'json'
pjson = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name            = "RNRandomBytes"
  s.version         = pjson["version"]
  s.homepage        = "https://github.com/mvayngrib/react-native-randombytes"
  s.summary         = pjson["description"]
  s.license         = pjson["license"]
  s.author          = { "Mark Vayngrib" => "mark.vayngrib@lablz.com" }
  s.platform        = :ios, "9.0"
  s.source          = { :git => "https://github.com/ianmcgregor/react-native-randombytes.git", :tag => "#{s.version}" }
  s.source_files    = '*.{h,m}'

  s.dependency 'React'

end
