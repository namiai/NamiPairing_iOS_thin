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
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/4.0.1/NamiPairingFramework.xcframework.zip",
            checksum: "ba975b7b3ce7bc2bdbb066b124a76518ba7172bf45a640f2d2afd4ab0ee3d09c"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/4.0.1/StandardPairingUI.xcframework.zip",
            checksum: "b68d7226225b21c8f41f5ba054030da90db1b74f4d949b6682405637e49b8308"),
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
