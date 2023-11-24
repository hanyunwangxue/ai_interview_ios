#
# Be sure to run `pod lib lint AiInterview.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AiInterviewSDK'
  s.version          = '0.2.0'
  s.summary          = 'A short description of AiInterview.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Plum/AiInterview'
  s.swift_version = "5.0"
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Plum' => '@plum.com' }
  s.source           = { :git => 'https://github.com/hanyunwangxue/ai_interview_ios.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'
  s.static_framework = true
  
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.subspec 'Interview' do |it|
    it.resource =  "AiInterviewResourceBundle.bundle"
    it.vendored_frameworks = 'AiInterview.framework'
  end

  s.subspec 'IJK' do |ijk|
    ijk.vendored_frameworks = "Frameworks/IJKMediaFramework.framework"
  end

  s.subspec 'ASR' do |asr|
    asr.vendored_frameworks = "Frameworks/QC*.framework"
  end

  s.subspec 'Log' do |lg|
    lg.vendored_frameworks = "Frameworks/AliyunLogProducer.framework"
  end

  s.frameworks  = "AudioToolbox", "AVFoundation", "CoreGraphics", "CoreMedia", "CoreVideo", "MobileCoreServices", "OpenGLES", "QuartzCore", "VideoToolbox", "Foundation", "UIKit", "MediaPlayer", "Accelerate", "SystemConfiguration"
  s.libraries   = "bz2", "z", "stdc++", "c++"
  
  s.requires_arc = true
  
  
end
