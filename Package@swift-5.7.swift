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
            targets: ["NamiPairingCore", "StandardPairingUI"]),
        .library(
            name: "NamiPairing-NoUI", 
            targets: ["NamiPairingCore"])
    ],
    dependencies: [
        .package(url: "https://github.com/airbnb/lottie-spm.git", .upToNextMajor(from: "4.4.3")),
    ],
    targets: [
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/4.6.0/NamiPairingFramework.xcframework.zip",
            checksum: "effc8ff5ee9af3cd50337560ebf62b52a0a8ad54340023bc880dea1d36aa3833"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/4.6.0/StandardPairingUI.xcframework.zip",
            checksum: "240bf652ac539f20c6bee4a742e3a9ef3e4f333adcc637892e8fac94ca9bec34"),
        .target(
          name: "NamiPairingCore",
          dependencies: [
            "NamiPairingFramework",
            .product(name: "Lottie", package: "lottie-spm"),
          ],
          path: "Sources/NamiPairing/NamiPairingCore"
        ),
    ]
)
