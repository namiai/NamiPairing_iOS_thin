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
        .binaryTarget(name: "NamiPairingFramework", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.7.0/NamiPairingFramework.xcframework.zip",
            checksum: "bde25f5fbe9c4fa6d54ab091f7837d5b326b00673f3ba5027962c298de3fb167"),
        .binaryTarget(name: "StandardPairingUI", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.7.0/StandardPairingUI.xcframework.zip",
            checksum: "09dab1f349d327139b42c577f465a0cbd36f7ee35674361e97fe85deed1d35a4"),
        .binaryTarget(name: "DeviceConnections", url: "https://github.com/namiai/NamiPairing_iOS_thin/releases/download/1.7.0/DeviceConnections.xcframework.zip",
            checksum: "a87e87969266b822cbb7b669e30251127a122cd10faf2b897d107dd8883e2d84")
    ]
)
