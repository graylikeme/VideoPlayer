// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VideoPlayer",
    platforms: [.iOS(.v17)],
    products: [
        .library(
            name: "VideoPlayer",
            targets: ["VideoPlayer"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/wxxsw/GSPlayer.git", from: "0.2.28"),
    ],
    targets: [
        .target(
            name: "VideoPlayer",
            dependencies: ["GSPlayer"],
            path: "Sources"
        ),
    ]
)
