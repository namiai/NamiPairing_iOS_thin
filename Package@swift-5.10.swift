// swift-tools-version: 5.10
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
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/3.0.0/NamiPairingFramework.xcframework.zip",
            checksum: "75c698cf0248a531790b7d5537177c9ae194614efec4ccbbb3a87f986546b5a6"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/3.0.0/StandardPairingUI.xcframework.zip",
            checksum: "e33e2dae9b29892d0236e82ef67c5d4605f1f3b4388eb2ee42bb8a7c80c8652f"),
        .binaryTarget(name: "DeviceConnections", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/3.0.0/DeviceConnections.xcframework.zip",
            checksum: "6b77aef87d6149ceecf84ee3f36977104c6c60378e85034ea2f9b29a12f23ef6")
    ]
)
