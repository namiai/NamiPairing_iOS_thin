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
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.7.5/NamiPairingFramework.xcframework.zip",
            checksum: "bc75b51d70f2feba1418d2d717c793b6a222cdc728fcfe4085222ff7d1f11c6d"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.7.5/StandardPairingUI.xcframework.zip",
            checksum: "5e0c75badf2dbfebd428f805579b090452da9424a5450d89239263373a037259"),
        .binaryTarget(name: "DeviceConnections", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.7.5/DeviceConnections.xcframework.zip",
            checksum: "e9a693d6c838176867af38d5fb36c0c1317a90890fe068ee115dd944c98e4f3c")
    ]
)
