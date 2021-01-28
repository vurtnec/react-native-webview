require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "react-native-webview"
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platforms    = { :ios => "9.0" }

  s.source       = { :git => "https://github.com/vurtnec/react-native-webview.git", :tag => "v#{s.version}" }
  s.source_files = "apple/**/*.{h,m}"
  s.requires_arc = true
  s.dependency 'React'
end
