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
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.6.4/NamiPairingFramework.xcframework.zip",
            checksum: "4705d6104888be9926f6450bb412e3e36a0f5b910e2d45330e7532a0a98ce42a"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.6.4/StandardPairingUI.xcframework.zip",
            checksum: "4edcd89b8bc4fb8bde15e864d4cfd9b8e03e3a3d9dae373d7b981d5306879534"),
        .binaryTarget(name: "DeviceConnections", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.6.4/DeviceConnections.xcframework.zip",
            checksum: "d1ab93c915b77b634b15ad683a2f2284e82748defcf185ae881eff128612098b")
    ]
)
