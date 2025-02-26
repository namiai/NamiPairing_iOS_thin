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
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/2.2.1/NamiPairingFramework.xcframework.zip",
            checksum: "1a3f7489d6a7158666e21e0f128c3e4726cfbd1edc90f41621fef5b24d6f3d37"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/2.2.1/StandardPairingUI.xcframework.zip",
            checksum: "96f140fe5a52c071338477140cd2e6218cf2b6fd1ef8e31035a4ac612a8ae51c"),
        .binaryTarget(name: "DeviceConnections", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/2.2.1/DeviceConnections.xcframework.zip",
            checksum: "0f7de428d85d690e3313f570c558405765be842043978a31613747a1e38663c0")
    ]
)
