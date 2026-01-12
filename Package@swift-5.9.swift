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
        .package(url: "https://github.com/airbnb/lottie-spm.git", .upToNextMajor(from: "4.4.3")),
    ],
    targets: [
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/4.7.0/NamiPairingFramework.xcframework.zip",
            checksum: "72b6ce1e462b0409239e851ab5aa7a5bad1673b85447c47d85c55cc4ce1a24d4"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/4.7.0/StandardPairingUI.xcframework.zip",
            checksum: "12cf6198869340a1c0453161360795c6a31cb93d14c76f052df40bf8f8c5f259"),
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
