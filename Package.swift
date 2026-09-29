// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BlueStackBidMachineAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "BlueStackBidMachineAdapter",
            targets: ["BlueStackBidMachineAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/azerion/BlueStackSDK.git", .upToNextMinor(from: "6.1.0")),
        .package(url: "https://github.com/bidmachine/BidMachine-SPM.git", exact: "3.7.1")
    ],
    targets: [
        .target(
            name: "BlueStackBidMachineAdapterTarget",
            dependencies: [
                .product(name: "BidMachine", package: "BidMachine-SPM"),
                .target(name: "BlueStackBidMachineAdapter", condition: .when(platforms: [.iOS])),
                .product(name: "BlueStackSDK", package: "BlueStackSDK", condition: .when(platforms: [.iOS]))
            ],
            path: "BlueStackBidMachineAdapterWrapper"
        ),
        .binaryTarget(
            name: "BlueStackBidMachineAdapter",
            path: "BlueStackBidMachineAdapter.xcframework"
        )
    ]
)
