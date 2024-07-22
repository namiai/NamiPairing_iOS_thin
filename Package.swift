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
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/2.0.0/NamiPairingFramework.xcframework.zip",
            checksum: "588293cc6582ad3f96c8d9b4df37cd97d5be7031e64556455b50b8a938da26c0"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/2.0.0/StandardPairingUI.xcframework.zip",
            checksum: "d3d7e06f047e8eb3741e7421bf55b6ad7e10bb5fa23d6e8429bb9a1614d191d8"),
        .binaryTarget(name: "DeviceConnections", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/2.0.0/DeviceConnections.xcframework.zip",
            checksum: "96feb963d72f778c79d6bf1cdae29ab333be3bba1d6b8292f39e89994a6e0525")
    ]
)
