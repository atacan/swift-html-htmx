// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftHtmlHtmx",
    platforms: [
            .macOS(.v10_15)
        ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftHtmlHtmx",
            targets: ["SwiftHtmlHtmx"]),
    ],
    dependencies:   [
        .package(url: "https://github.com/atacan/BinaryBirds-swift-html", branch: "main"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SwiftHtmlHtmx",
        dependencies: [
            .product(name: "SwiftHtml", package: "BinaryBirds-swift-html"),
        ]
        ),
        .testTarget(
            name: "SwiftHtmlHtmxTests",
            dependencies: ["SwiftHtmlHtmx"]),
    ]
)
