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
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.6.3/NamiPairingFramework.xcframework.zip",
            checksum: "9c34ebdc8a7cc7e6def6756657a52a780b3ba30f73dc45f7dde3948db34970cf"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.6.3/StandardPairingUI.xcframework.zip",
            checksum: "7005341a0e8d911cdcbf73ef1ce9d13587aed19874527d4207c1040be1643c11"),
        .binaryTarget(name: "DeviceConnections", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.6.3/DeviceConnections.xcframework.zip",
            checksum: "8fad12a65a32bd395d873c7fd6d36851f266f9e0c3564f64c9b7dc8a3c9a414e")
    ]
)
