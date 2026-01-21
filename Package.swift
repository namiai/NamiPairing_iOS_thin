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
            url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/4.7.1/NamiPairingFramework.xcframework.zip",
            checksum: "c6f4b403eb588e8bae8b6941280d472c98c0a63af2760cfdecc2210c8b9c8bad"),
        .binaryTarget(
            name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/4.7.1/StandardPairingUI.xcframework.zip",
            checksum: "228e73df1397f3a7ba5e2fdcb2c03b6c8bef92ae62e4390801f159ecfc9cf9d9"),
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
