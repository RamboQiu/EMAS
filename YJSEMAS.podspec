#
# Be sure to run `pod lib lint YJSEMAS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YJSEMAS'
  s.version          = '0.0.1'
  s.summary          = 'A short description of YJSEMAS.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://codeup.aliyun.com/636228d50cd435624679a77b/iOS/libs/tools/YJSEMAS.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'qiujunyun' => 'qiujunyun@microbt.com' }
  s.source           = { :git => 'https://codeup.aliyun.com/636228d50cd435624679a77b/iOS/libs/tools/YJSEMAS.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  s.swift_version    = '5.0'
  s.static_framework = true
  s.module_name      = 'YJSEMAS'
  s.source_files = 'YJSEMAS/**/*'
  s.dependency 'AlicloudCrash'# 奔溃捕捉
  s.dependency 'AlicloudAPM' # 性能监控
  s.dependency 'AlicloudTLog' # 远程日志
end
