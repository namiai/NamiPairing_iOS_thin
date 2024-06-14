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
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.7.1/NamiPairingFramework.xcframework.zip",
            checksum: "8812334d313104715f2bd9b3fbbb997a8ef30dc37d3958873bc45a65ba69654d"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.7.1/StandardPairingUI.xcframework.zip",
            checksum: "dd5add4bc9442c24548d58eb23862acdff0348c07b2974dae6b1f86a9a4c56ec"),
        .binaryTarget(name: "DeviceConnections", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.7.1/DeviceConnections.xcframework.zip",
            checksum: "e7d8a88481e51834d9804aaa054dcc8073b3ded9b036fc1579b91112d1b1d95f")
    ]
)
