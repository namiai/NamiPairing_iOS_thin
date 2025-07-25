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
        .package(url: "https://github.com/namiai/vgsl.git", revision: "3a1ce6687505ef40965930d198c0f700234bf70b")
        
    ],
    targets: [
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/4.0.0/NamiPairingFramework.xcframework.zip",
            checksum: "d1683ca48611d6532a84dccc3ff5dad8b322ef5c5202bcd603fea9b53ca86a24"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/4.0.0/StandardPairingUI.xcframework.zip",
            checksum: "71b93d875a5a1d895975cf592fb756b63c825ab667370a8dddaa7f606e87885e"),
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
