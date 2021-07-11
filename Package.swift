// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "swift-css",
    platforms: [
       .macOS(.v10_15)
    ],
    products: [
        .library(name: "SwiftCss", targets: ["SwiftCss"]),
    ],
    dependencies: [
        
    ],
    targets: [
        .target(name: "SwiftCss", dependencies: [
            
        ]),
        .testTarget(name: "SwiftCssTests", dependencies: [
            .target(name: "SwiftCss"),
        ]),
    ]
)


