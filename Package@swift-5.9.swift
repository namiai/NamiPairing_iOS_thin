// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NamiPairing",
    platforms: [
        .iOS(.v14),
        .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "NamiPairing",
            targets: ["NamiPairingFramework", "StandardPairingUI", "DeviceConnections"]),
        .library(
            name: "NamiPairing-NoUI", 
            targets: ["NamiPairingFramework", "DeviceConnections"])
    ],
    targets: [
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.7.7/NamiPairingFramework.xcframework.zip",
            checksum: "112dfc8650ac051957df2146b845d5c728fa4bd0467101ba394776cfb947dbb9"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.7.7/StandardPairingUI.xcframework.zip",
            checksum: "29cd8bd0d3b689ef90112d638bc413059b9ccd461b71b0ca07a601818aa9110d"),
        .binaryTarget(name: "DeviceConnections", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.7.7/DeviceConnections.xcframework.zip",
            checksum: "ad55256e61e9fbff3ae0bf419eb5416e801e0926a4d89228f457c654327b7e93")
    ]
)
