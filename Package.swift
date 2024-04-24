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
            targets: ["NamiPairingFramework", "StandardPairingUI"]),
    ],
    targets: [
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.6/NamiPairingFramework.xcframework.zip",
            checksum: "b31f14b0affe38cf35ec69549ef99849948963fb1a88f8fdc240925340fe46e0"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.6/StandardPairingUI.xcframework.zip",
            checksum: "402e9d290c31d9844c7aedfa8a01989832dd8e0d38d126f9f9a8dad05038a3d8"),
    ]
)
