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
            targets: ["NamiPairingCore"]),
    ],
    dependencies: [
        .package(url: "https://github.com/airbnb/lottie-spm.git", .upToNextMajor(from: "4.4.3")),
    ],
    targets: [
        .binaryTarget(
            name: "NamiPairingFramework",
            url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/4.8.3/NamiPairingFramework.xcframework.zip",
            checksum: "f09afc66abbdb499981c3b3117a338bdeab3741fd5e74c1ce65351059da60732"),
        .binaryTarget(
            name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/4.8.3/StandardPairingUI.xcframework.zip",
            checksum: "c0f2fa2e5c71a51b8261071a66efcb366af7e595420342f7ea5f082100a02213"),
        .target(
            name: "NamiPairingCore",
            dependencies: [
                "NamiPairingFramework",
                .product(name: "Lottie", package: "lottie-spm")
            ],
            path: "Sources/NamiPairing/NamiPairingCore"
        ),
    ]
)
