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
            targets: ["NamiPairingFramework", "StandardPairingUI", "DeviceConnections"]),
        .library(
            name: "NamiPairing-NoUI", 
            targets: ["NamiPairingFramework", "DeviceConnections"])
    ],
    targets: [
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/2.1.1/NamiPairingFramework.xcframework.zip",
            checksum: "1ce7da4ce434ec09ffe473e9a1f11c3ccc03ff6851368f6681f6315acc666c9f"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/2.1.1/StandardPairingUI.xcframework.zip",
            checksum: "277c27bf5b33987536981033128e29d1ea33545c2df39130443f8e9eda87af6d"),
        .binaryTarget(name: "DeviceConnections", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/2.1.1/DeviceConnections.xcframework.zip",
            checksum: "560f3d66f5963464d8b463551c37407a48623bff18ba472bdd449869b3068963")
    ]
)
