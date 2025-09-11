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
    targets: [
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/4.2.0/NamiPairingFramework.xcframework.zip",
            checksum: "764e33de2a67c18ce8de94eda8ec45d17b6f4bd6ac31e97c0c0c2e409da3efde"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/4.2.0/StandardPairingUI.xcframework.zip",
            checksum: "2a19840f892282a02f66430c56f30fc558a0c873525a8f775b1a62f42975374f"),
        .target(
          name: "NamiPairingCore",
          dependencies: [
            "NamiPairingFramework",
          ],
          path: "Sources/NamiPairing/NamiPairingCore"
        ),
    ]
)
