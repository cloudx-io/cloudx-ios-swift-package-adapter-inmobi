// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CloudXInMobiAdapter",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "CloudXInMobiAdapter",
            targets: ["CloudXInMobiAdapterPackage"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-core.git",
            from: "3.9.1"
        ),
        .package(
            url: "https://github.com/InMobi/InMobiSDK-Swift-Package.git",
            exact: "11.5.0"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXInMobiAdapter",
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-inmobi/releases/download/binary/11050000.0.0/CloudXInMobiAdapter.xcframework.zip",
            checksum: "4a2d40837d59ea98d618373fe6f96662e72715017b3b1d6db0f71f5cb4693af2"
        ),
        .target(
            name: "CloudXInMobiAdapterPackage",
            dependencies: [
                "CloudXInMobiAdapter",
                .product(name: "CloudXCore", package: "cloudx-ios-swift-package-core"),
                .product(name: "InMobiSDK", package: "inmobisdk-swift-package"),
            ]
        ),
        .testTarget(
            name: "CloudXInMobiAdapterSwiftTests",
            dependencies: ["CloudXInMobiAdapterPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
        .testTarget(
            name: "CloudXInMobiAdapterObjCTests",
            dependencies: ["CloudXInMobiAdapterPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
    ]
)
