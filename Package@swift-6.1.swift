// swift-tools-version: 6.1
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
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/4.0.5/NamiPairingFramework.xcframework.zip",
            checksum: "b78c350454689f7a96521937e683fc1f73ee46ab74450e9ecb5c164439fd042a"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/4.0.5/StandardPairingUI.xcframework.zip",
            checksum: "bf0cf3657bc0e95746ec284686a5b559529b2d32e31939c993d05d7f2b7204d4"),
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
