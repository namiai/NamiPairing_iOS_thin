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
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.6.2/NamiPairingFramework.xcframework.zip",
            checksum: "dc8e65250841edc9b13ba644ca328017bcf4ba3febb9d042f0e1d971bd98c4df"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.6.2/StandardPairingUI.xcframework.zip",
            checksum: "4de4e51ea4644c65dd75f1a2e4d3f3ed0185d90cd3d1d42648afa0cec9732fc8"),
        .binaryTarget(name: "DeviceConnections", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.6.2/DeviceConnections.xcframework.zip",
            checksum: "3383f548940ada100a6583e0ee339444dc7ee3eec9f22bbb904530231694f9ff")
    ]
)
