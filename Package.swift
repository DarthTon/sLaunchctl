// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "sLaunchctl",
    platforms: [.macOS(.v10_13)],
    products: [
        .library(
            name: "sLaunchctl",
            targets: ["sLaunchctl"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/CyberhavenInc/SwiftSpellbook.git", branch: "ch_0.3.3"),
    ],
    targets: [
        .target(
            name: "sLaunchctl",
            dependencies: [.product(name: "SpellbookFoundation", package: "SwiftSpellbook")]
        ),
        .testTarget(
            name: "sLaunchctlTests",
            dependencies: [
                "sLaunchctl",
                .product(name: "SpellbookFoundation", package: "SwiftSpellbook"),
            ]
        ),
    ]
)
