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
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/2.2.0/NamiPairingFramework.xcframework.zip",
            checksum: "d4c5e5b94bf3db7ed247ac8893b8d9478e56891795f5c718aeb5fb994d181cab"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/2.2.0/StandardPairingUI.xcframework.zip",
            checksum: "d2cefaed45617777ed839b57bc37225b39938eee9dcd5c1b91a720302ec5c6a5"),
        .binaryTarget(name: "DeviceConnections", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/2.2.0/DeviceConnections.xcframework.zip",
            checksum: "d3bb8434418b0817a712f1989bffdf4575c5b4dc4cffac481015799c48dbf6b2")
    ]
)
