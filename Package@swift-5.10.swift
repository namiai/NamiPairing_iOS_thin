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
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/2.2.2/NamiPairingFramework.xcframework.zip",
            checksum: "869f695b433c9858857522f9cd90fb8a9a9f0e5795d60ec752e1fb84f149c879"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/2.2.2/StandardPairingUI.xcframework.zip",
            checksum: "474acbe6c1d6b3d612ec0d1b65df717ffe2cbcea2e697a5d8a980534187c3978"),
        .binaryTarget(name: "DeviceConnections", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/2.2.2/DeviceConnections.xcframework.zip",
            checksum: "61db2697642f61ee434d5a68fa966f12a9826210d4d6808cd3a60fe887ad0282")
    ]
)
