// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let name = "LocalizedPlural"
let package = Package(
    name: name,
    products: [
        .library(
            name: name,
            targets: [name])
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: name,
            dependencies: [],
            path: "Sources"
        ),
    ]
)
