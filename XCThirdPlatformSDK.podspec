

Pod::Spec.new do |s|
  s.name             = 'XCThirdPlatformSDK'
  s.version          = '0.0.1'
  s.summary          = '第三方SDK资源包（微信V1.8.1、支付宝V15.5.0､ 科大讯飞语音播报SDK）'

  s.description      = <<-DESC
  XCThirdPlatformSDK，第三方SDK资源包（微信V1.8.1、支付宝V15.5.0､ 科大讯飞语音播报SDK）
                       DESC

  s.homepage         = 'https://github.com/fanxiaocong/XCThirdPlatformSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'fanxiaocong' => '1016697223@qq.com' }
  s.source           = { :git => 'https://github.com/fanxiaocong/XCThirdPlatformSDK.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.3'

    # 微信SDK
    s.subspec 'WeChatSDK' do |wechat|
        wechat.source_files = 'XCThirdPlatformSDK/Classes/WeChatSDK/*.{h,m}'
        wechat.public_header_files = 'XCThirdPlatformSDK/Classes/WeChatSDK/*.h'
        
        # 第三方 .a
        wechat.vendored_libraries = 'XCThirdPlatformSDK/Classes/WeChatSDK/libWeChatSDK.a'
        
        wechat.frameworks = [
        'CoreTelephony',
        'SystemConfiguration',
        'QuartzCore'
        ]
        
        wechat.libraries = [
        'z',
        'sqlite3.0',
        'c++'
        ]
    end


    # 支付宝
    s.subspec 'AlipaySDK' do |alipay|
        alipay.resources = 'XCThirdPlatformSDK/Classes/AlipaySDK/AlipaySDK.bundle'
        alipay.source_files = 'XCThirdPlatformSDK/Classes/AlipaySDK/*.h'
        alipay.public_header_files = 'XCThirdPlatformSDK/Classes/AlipaySDK/*.h'
        alipay.vendored_frameworks = 'XCThirdPlatformSDK/Classes/AlipaySDK/AlipaySDK.framework'
        
        alipay.frameworks = [
        'CoreTelephony',
        'SystemConfiguration',
        'QuartzCore',
        'CoreText',
        'CoreGraphics',
        'UIKit',
        'Foundation',
        'CFNetwork',
        'CoreMotion'
        ]
        
        alipay.libraries = [
        'z',
        'c++'
        ]
    end


    # 科大讯飞语音播报SDK
    s.subspec 'IFlySDK' do |ifly|
        ifly.source_files = 'XCThirdPlatformSDK/Classes/IFlySDK/*.h'
        ifly.public_header_files = 'XCThirdPlatformSDK/Classes/IFlySDK/*.h'
        ifly.vendored_frameworks = 'XCThirdPlatformSDK/Classes/IFlySDK/iflyMSC.framework'
        
        ifly.frameworks= [
        'CoreTelephony',
        'SystemConfiguration',
        'AVFoundation',
        'CoreTelephony',
        'AudioToolbox',
        'Contacts',
        'CoreLocation',
        'AddressBook',
        'QuartzCore',
        'CoreGraphics'
        ]
        
        ifly.libraries = [
        'z',
        'c++'
        ]
        
        ifly.pod_target_xcconfig = {'ENABLE_BITCODE' => 'NO', 'ONLY_ACTIVE_ARCH' => 'NO'}
    end

  
end
