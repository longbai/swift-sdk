Pod::Spec.new do |s|
  s.name = 'QiniuSwift'
  s.version = '7.0.0'
  s.license = 'MIT'
  s.summary = 'Qiniu Resource Storage SDK For Swift'
  s.homepage = 'https://github.com/qiniu/swift-sdk'
  s.social_media_url = 'http://weibo.com/qiniutek'
  s.authors = { 'Qiniu => sdk@qiniu.com' }
  s.source = { :git => 'https://github.com/qiniu/swift-sdk.git', :tag => s.version }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.source_files = 'Source/*.swift'

  s.dependency 'Alamofire', '~> 3.0'
end
