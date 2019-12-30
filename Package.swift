// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "Panda",
    products: [
        .library(name: "Panda", targets: ["Panda"]),
    ],
    targets: [
        .target(name: "Panda", path: "Sources"),
    ]
)