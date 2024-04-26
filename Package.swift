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
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.6.1/NamiPairingFramework.xcframework.zip",
            checksum: "2863ace64e131db0580ce0a27b34be9de27cd8aaf24a41e886c03363b8e7c5d6"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.6.1/StandardPairingUI.xcframework.zip",
            checksum: "a4b28fd06e9c9f92d685857906bb06afd8d3bbc659399e11727e071562ae5e78"),
        .binaryTarget(name: "DeviceConnections", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.6.1/DeviceConnections.xcframework.zip",
            checksum: "e76883a7b01b7ae840b26695c87264da29682b14d640efc9d0c7ade0ca6dd37b")
    ]
)
