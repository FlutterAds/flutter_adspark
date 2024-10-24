#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_adspark.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_adspark'
  s.version          = '1.1.4'
  s.summary          = 'Flutter 版的 AdSpark 主要功能广告监测、增长分析、归因上报、事件管理(巨量引擎、巨量广告、穿山甲)'
  s.description      = <<-DESC
  Flutter 版的 AdSpark 主要功能广告监测、增长分析、归因上报、事件管理(巨量引擎、巨量广告、穿山甲)
                       DESC
  s.homepage         = 'https://github.com/FlutterAds'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'FlutterAds' => 'https://github.com/FlutterAds' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end
