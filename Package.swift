// swift-tools-version: 5.0 > ...
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TabBar-Live-OS",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "TabBar-Live-OS",
            targets: ["TabBar-Live-OS"]),
    ],
    targets: [
        .target(
            name: "TabBar-Live-OS",
            dependencies: [],
            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("Foundation")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
