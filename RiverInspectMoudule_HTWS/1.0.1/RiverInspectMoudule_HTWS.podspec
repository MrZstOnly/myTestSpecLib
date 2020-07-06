#
# Be sure to run `pod lib lint RiverInspectMoudule_HTWS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'RiverInspectMoudule_HTWS'
    s.version          = '1.0.1'
    s.summary          = '巡河模块->针对海豚卫士修改的版本（包含海豚卫士的巡河模块和巡检模块）'
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = <<-DESC
    海豚卫士的巡河模块，由及时云的巡河模块修改得到的
    DESC
    
    s.homepage         = 'http://git.istrongcloud.net/201created/ECloud/ECloud-modules/RiverInspectModule-iOS'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '550808296@qq.com' => '550808296@qq.com' }
    s.source           = { :git => 'http://git.istrongcloud.net/201created/ECloud/ECloud-modules/RiverInspectModule-iOS', :tag => s.version.to_s }
    
    
    s.ios.deployment_target = '8.0'
    
    s.requires_arc = true
    
    s.default_subspec = 'All'
    s.frameworks = 'Foundation', 'UIKit'
    # 所用到 cocoapods 中的其他类库
    s.dependency 'ECloudCommonUtil' #通用网络 以及 主题，等配置
    s.dependency 'AMap3DMap-NO-IDFA'
    s.dependency 'AMapSearch-NO-IDFA'
    s.dependency 'XWHWORKLIB'
    s.dependency 'CoreLocationUtils' ##地图工具类
    s.dependency 'GTimeCheck' ##时间校验
    s.dependency 'ApiLogUtil' ##网络请求log
    
    s.subspec 'All' do |ss|
        ss.dependency 'RiverInspectMoudule_HTWS/RiverInspect'
        ss.dependency 'RiverInspectMoudule_HTWS/RiverMaintain'
    end
    
    s.subspec 'RiverInspect' do |ss|
        ss.prefix_header_contents = <<-EOS
        #import <GTimeCheck/GRealTimeUtil.h>
        #import <CoreLocationUtils/CoreLocationUtils.h>
        #import "RIModuleDataHelper.h"
        #import "RITableOpUtil.h"
        #import <ECloudCommonUtil/ECCommon.h>
        #import <XWHWORKLIB/UIView+FrameProperty.h>
        #import "RIReadBundle.h"
        EOS
        
        ss.source_files = 'RiverInspectMoudule_HTWS/RiverInspectModule/Classes/**/*'
        ss.resources = "RiverInspectMoudule_HTWS/RiverInspectModule/Assets/**/*.{bundle}"
        
    end
    
    s.subspec 'RiverMaintain' do |ss|
        
        ss.prefix_header_contents = <<-EOS
        #import <GTimeCheck/GRealTimeUtil.h>
        #import <CoreLocationUtils/CoreLocationUtils.h>
        #import "RMModuleDataHelper.h"
        #import "RMTableOpUtil.h"
        #import <ECloudCommonUtil/ECCommon.h>
        #import <XWHWORKLIB/UIView+FrameProperty.h>
        #import "RMReadBundle.h"
        EOS
        
        ss.source_files = 'RiverInspectMoudule_HTWS/RiverMaintainModule/Classes/**/*'
        ss.resources = "RiverInspectMoudule_HTWS/RiverMaintainModule/Assets/**/*.{bundle}"
        
    end
end
