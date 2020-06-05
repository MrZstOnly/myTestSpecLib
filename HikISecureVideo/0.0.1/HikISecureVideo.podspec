#
# Be sure to run `pod lib lint HikISecureVideo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HikISecureVideo'
  s.version          = '0.0.1'
  s.summary          = 'HikISecureVideo for sichuang'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  HikISecureVideo,pod集成私有仓库.
                       DESC

  s.homepage         = 'https://www.baidu.com'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '550808296@qq.com' => '550808296@qq.com' }
  s.source           = { :git => 'https://github.com/MrZstOnly/HikISecureVideo.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'HikISecureVideo/Classes/**/*.{h,m,mm}'
  s.vendored_frameworks = "HikISecureVideo/Classes/**/*.{framework}"
  s.resources = "HikISecureVideo/Classes/**/*.{bundle}"
  s.requires_arc = true
s.prefix_header_contents = <<-EOS
  #import <HXProgressHUD/HXProgress.h>
  #import <Masonry/Masonry.h>
  #import <ECloudCommonUtil/ECloudCommonUtil.h>
EOS
# 第三方pod包的引入
s.dependency 'Masonry'  ##界面布局
#通用网络 以及 主题，等配置
s.dependency 'ECloudCommonUtil/HXRotationManager' ##旋转
s.dependency 'ECloudCommonUtil/HXAnnotationMananger' ##路由
s.dependency 'ECloudCommonUtil/UserfulService', '1.0.9'

  
  # s.resource_bundles = {
  #   'HikISecureVideo' => ['HikISecureVideo/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
