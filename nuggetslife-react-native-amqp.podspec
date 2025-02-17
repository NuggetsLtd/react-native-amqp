require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = "nuggetslife-react-native-amqp"
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = package['homepage']
  s.source         = { :git => 'https://github.com/rabbitmq/rabbitmq-objc-client.git', :tag => s.version }

  s.requires_arc   = true
  s.platform       = :ios, '13.4'

  s.preserve_paths = 'README.md', 'package.json', 'index.js'
  s.source_files   = 'iOS/RCTReactNativeRabbitMq/*.{h,m}'

  s.dependency 'RMQClient'
end
