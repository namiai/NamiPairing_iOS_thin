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
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/2.0.2/NamiPairingFramework.xcframework.zip",
            checksum: "872143b66ebc141b2386183082ceabae0e07e11d53d6d997aecc28b7e9fb2870"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/2.0.2/StandardPairingUI.xcframework.zip",
            checksum: "74d060f57427bfb3b01aba261f6d1fe6f3337dadccb2f8ed839c2b78aa0e9789"),
        .binaryTarget(name: "DeviceConnections", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/2.0.2/DeviceConnections.xcframework.zip",
            checksum: "02e9e3c7fae2e96859f9263a455fe60671c346ec796db422b221ad9f70d128a9")
    ]
)
