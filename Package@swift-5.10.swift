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
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.6.5/NamiPairingFramework.xcframework.zip",
            checksum: "9f5225c0e457386ec142306019aada3c707c7ea5600e606a9555986776ee9b67"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.6.5/StandardPairingUI.xcframework.zip",
            checksum: "90c353500614ea48ceae1834ed9a160560d7943aae9468211731fa4d746ca4a3"),
        .binaryTarget(name: "DeviceConnections", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.6.5/DeviceConnections.xcframework.zip",
            checksum: "9cdb53206ffb8657dbd6dd3ed205c1ae6bb0e9789ca17494836a5c7a2b239fba")
    ]
)
