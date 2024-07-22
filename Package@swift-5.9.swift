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
            targets: ["NamiPairingFramework", "StandardPairingUI", "DeviceConnections"]),
        .library(
            name: "NamiPairing-NoUI", 
            targets: ["NamiPairingFramework", "DeviceConnections"])
    ],
    targets: [
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/2.0.1/NamiPairingFramework.xcframework.zip",
            checksum: "11458472cc364e9ef47f02915366fb22275c3d78e452eb7e99d4dff946a1fe3f"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/2.0.1/StandardPairingUI.xcframework.zip",
            checksum: "47e6de4ea31401fd3b6f11883a0421de383e680954490f264171626365245e9b"),
        .binaryTarget(name: "DeviceConnections", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/2.0.1/DeviceConnections.xcframework.zip",
            checksum: "e126fdf5d946f33717f62f8f8acd187bd79f258e1cd071d860628be85091ea8e")
    ]
)
