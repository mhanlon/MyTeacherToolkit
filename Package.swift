// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyTeacherToolKit",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MyTeacherToolKit",
            targets: ["MyTeacherToolKit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/mhanlon/MyTimer", from: "1.0.0"),
        .package(url: "https://github.com/mhanlon/AudioMonitor", from: "1.0.0"),
        .package(url: "https://github.com/mhanlon/MyColorPicker", from: "1.0.0"),
        .package(url: "https://github.com/mhanlon/MyApplePie", from: "1.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MyTeacherToolKit",
            dependencies: []),
        .testTarget(
            name: "MyTeacherToolKitTests",
            dependencies: ["MyTeacherToolKit"]),
    ]
)
