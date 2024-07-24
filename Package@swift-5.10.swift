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
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.7.6/NamiPairingFramework.xcframework.zip",
            checksum: "c24d72d05dbca9d35086602cd7b456a5d0471c150714586fb2a006aeff7d7773"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.7.6/StandardPairingUI.xcframework.zip",
            checksum: "ce482b3f80ea05d59085e3db00e72cb843ccb872890c7182201a65f9b39ccba0"),
        .binaryTarget(name: "DeviceConnections", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.7.6/DeviceConnections.xcframework.zip",
            checksum: "8bd65770546e1cf8dc350f9d4a2a3d88df5d38cfedc3be9a4bfd70f2590dba54")
    ]
)
