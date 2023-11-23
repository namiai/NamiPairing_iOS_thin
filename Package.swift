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
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.4/NamiPairingFramework.xcframework.zip",
            checksum: "367ef9bb4663c1c6fb44a1ba4eef6b8838ec033272c64ced592c7dc733356997"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.4/StandardPairingUI.xcframework.zip",
            checksum: "8b2f0aff630b3a7a886b371106d1f818c5a81d1d0fde54df47162e7e341ce362"),
    ]
)
