// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "MotionKit",
    platforms: [
        .iOS(.v15),
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "MotionKit", targets: ["MotionKit"]),
    ],
    targets: [
        .target(
            name: "MotionKit",
            path: "Sources/MotionKit"
        ),
        .testTarget(
            name: "MotionKitTests",
            dependencies: ["MotionKit"],
            path: "Tests/MotionKitTests"
        )
    ]
)
