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
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.6.6/NamiPairingFramework.xcframework.zip",
            checksum: "77611b68646284d34cd3e92cca3cfb8c7b51886853989a4ce84f5d52b595b11d"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.6.6/StandardPairingUI.xcframework.zip",
            checksum: "e466721da24edda68ca083dc4ce1e734112a5d0dc51d5755451810cb48eb2d2c"),
        .binaryTarget(name: "DeviceConnections", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.6.6/DeviceConnections.xcframework.zip",
            checksum: "8fb72512c6ba1f99d3a1884a64015725a6ffa628753e0c329edabc383f8c7ffd")
    ]
)
