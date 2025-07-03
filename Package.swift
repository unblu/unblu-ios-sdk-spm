// swift-tools-version:5.3
import PackageDescription

let version = "4.11.1"

let UnbluCoreSDK_CHECKSUM = "801d481521278aa4b48393bc4b7fd6298cac293ebc8453e7cc611817c92c437c"
let UnbluFirebaseNotificationModule_CHECKSUM = "d3a9c8b793374776a0e79e4bff8bc9186b6a23f606e4fb5854e7080645831e85"
let UnbluOpenTokCallModule_CHECKSUM = "9ba243441955a2edf20ad1c522f0886ba0465861422631ad7fc5134d8e1dc81a"
let UnbluLiveKitCallModule_CHECKSUM = "9240b8f6d7e8bf1df448d79de2a24a02099d040993aefdb5fff20b2e36a512cc"
let UnbluMobileCoBrowsing_CHECKSUM = "a755ad9c82bb6a5dcd79cebb294cbbd4b176d2751d29765d84f1695eeb42fa20"
let UnbluCallKitModule_CHECKSUM = "b354cf2171e85b528896d4703e8226505c2dd5bf4d4081915623dffd04e27ce2"
let UnbluDocumentCoBrowsingModule_CHECKSUM = "42427016df93c8666366330e4bc041872eec8d937c8368a5361b9e963dbb4fe1"


let package = Package(
    name: "UnbluMobileSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "UnbluMobileSDK",
            targets: ["UnbluCoreSDK", "UnbluMobileCoBrowsingModule"]
        ),
        .library(
            name: "UnbluFirebaseNotificationModule",
            targets: ["UnbluFirebaseNotificationModule"]
        ),
        .library(
            name: "UnbluLiveKitWebRtcProvider",
            targets: ["UnbluLiveKitCallModule"]
        ),
        .library(
            name: "UnbluVonageWebRtcProvider",
            targets: ["UnbluOpenTokCallModule"]
        ),
        .library(
            name: "UnbluCallKitModule",
            targets: ["UnbluCallKitModule"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "UnbluCoreSDK",
            url: "https://github.com/unblu/ios-sdk-xcframeworks/releases/download/\(version)/UnbluCoreSDK.xcframework.zip",
            checksum: UnbluCoreSDK_CHECKSUM
        ),
        .binaryTarget(
            name: "UnbluFirebaseNotificationModule",
            url: "https://github.com/unblu/ios-sdk-xcframeworks/releases/download/\(version)/UnbluFirebaseNotificationModule.xcframework.zip",
            checksum: UnbluFirebaseNotificationModule_CHECKSUM
        ),
        .binaryTarget(
            name: "UnbluOpenTokCallModule",
            url: "https://github.com/unblu/ios-sdk-xcframeworks/releases/download/\(version)/UnbluOpenTokCallModule.xcframework.zip",
            checksum: UnbluOpenTokCallModule_CHECKSUM
        ),
        .binaryTarget(
            name: "UnbluLiveKitCallModule",
            url: "https://github.com/unblu/ios-sdk-xcframeworks/releases/download/\(version)/UnbluLiveKitCallModule.xcframework.zip",
            checksum: UnbluLiveKitCallModule_CHECKSUM
        ),
        .binaryTarget(
            name: "UnbluMobileCoBrowsingModule",
            url: "https://github.com/unblu/ios-sdk-xcframeworks/releases/download/\(version)/UnbluMobileCoBrowsingModule.xcframework.zip",
            checksum: UnbluMobileCoBrowsing_CHECKSUM
        ),
        .binaryTarget(
            name: "UnbluCallKitModule",
            url: "https://github.com/unblu/ios-sdk-xcframeworks/releases/download/\(version)/UnbluCallKitModule.xcframework.zip",
            checksum: UnbluCallKitModule_CHECKSUM
        ),
        .binaryTarget(
            name: "UnbluDocumentCoBrowsingModule",
            url: "https://github.com/unblu/ios-sdk-xcframeworks/releases/download/\(version)/UnbluDocumentCoBrowsingModule.xcframework.zip",
            checksum: UnbluDocumentCoBrowsingModule_CHECKSUM
        )
    ]
)
