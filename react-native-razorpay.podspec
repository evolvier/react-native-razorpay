require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name             = package['name']
  s.version          = package['version']
  s.summary          = package['description']
  s.license          = package['license']
  s.homepage         = package['homepage']
  s.authors          = package['author']
  s.source           = { :git => 'https://github.com/razorpay/react-native-razorpay.git', :tag => "v#{s.version}" }
  s.platform         = :ios, '10.0'
  s.source_files     = 'ios/*.{h,m}'
  s.requires_arc     = true
  s.dependency         'React'
  s.dependency         'razorpay-pod', '~> 1.1.1'
end