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
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/2.1.0/NamiPairingFramework.xcframework.zip",
            checksum: "0995f176b608f3b2bf415d0842f96d3b8036858ee17db4758620c23c69ff7435"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/2.1.0/StandardPairingUI.xcframework.zip",
            checksum: "ee78c00879c481e6487c24a56c1294db4273cf60bbd275072b38ae66b944f616"),
        .binaryTarget(name: "DeviceConnections", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/2.1.0/DeviceConnections.xcframework.zip",
            checksum: "daaf4f730a99e0aaf835834933fc64c0cb2fa1647278c1ef8317437e130aa0d5")
    ]
)
