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
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.5/NamiPairingFramework.xcframework.zip",
            checksum: "808348c8835ad95d93643aed55acd18b70aa6c36f13186731efbfa975eb6c689"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.5/StandardPairingUI.xcframework.zip",
            checksum: "d32bb1b9bcf07e8768169faa58e2eb3305ecc9f42c4bc714ebb99dbe6c31359f"),
    ]
)
