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
            targets: ["NamiPairingCore", "StandardPairingUI"]),
        .library(
            name: "NamiPairing-NoUI", 
            targets: ["NamiPairingCore"])
    ],
    dependencies: [
        .package(url: "https://github.com/divkit/divkit-ios", from: "32.9.0"),
        .package(url: "https://github.com/namiai/vgsl.git", from: "7.4.2")
    ],
    targets: [
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/4.0.3/NamiPairingFramework.xcframework.zip",
            checksum: "7556a28ee347ca42f007a6998055de9bcd88312f7c9dbe398f3a8c4879eda20f"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/4.0.3/StandardPairingUI.xcframework.zip",
            checksum: "013c354b58000a0e7917221c8b78fb9d96e65a0a8aa3512515902a60b13dab48"),
        .target(
          name: "NamiPairingCore",
          dependencies: [
            "NamiPairingFramework",
            .product(name: "DivKit", package: "divkit-ios"),
            .product(name: "DivKitSVG", package: "divkit-ios"),
            .product(name: "DivKitExtensions", package: "divkit-ios"),
            .product(name: "VGSL", package: "vgsl"),
          ],
          path: "Sources/NamiPairing/NamiPairingCore"
        ),
    ]
)
