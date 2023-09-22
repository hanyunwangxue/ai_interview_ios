# 集成文档

## 一. 权限配置

在info.plist配置相关摄像头、麦克风权限

```swift
<key>NSCameraUsageDescription</key>
<string>是否允许使用照相机</string>
<key>NSMicrophoneUsageDescription</key>
<string>是否允许使用麦克风</string>
```

## 二. 集成

### 1. CocoaPods集成（推荐）

在 `Podfile` 文件加入

```ruby
pod "AiInterviewSDK"
```

### 2. 手动集成

1. 下载SDK，将 `AiInterView.framework` 、 `Frameworks` 文件夹里面的framework、`AiInterviewResourceBundle.bundle` 进入工程。
2. 引入以下系统库
    - AudioToolbox.framework
    - AVFoundation
    - AudioToolbox
    - VideoToolbox
    - CoreGraphics
    - CoreMedia
    - CoreVideo
    - MobileCoreServices
    - OpenGLES
    - QuartzCore
    - MediaPlayer
    - Accelerate
    - SystemConfiguration
    - libbz2.tbd
    - libz.tbd
    - libc++.tbd

## 三. 实例代码

```swift
let controller = AiInterViewController(token: "面试的token")
controller.delegate = self
navigationController?.pushViewController(controller, animated: true)
```

## 四. 注意事项

1. SDK最低支持的iOS版本是 **`11.0`**
2. SDK 采用 `Swift 5.0` 开发