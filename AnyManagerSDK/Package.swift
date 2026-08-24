// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AnyManagerSDK",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AnyManagerSDK",
            targets: ["AnyManagerSDKTarget"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
            from: "13.6.0"
        ),
        .package(
            url: "https://github.com/googleads/googleads-mobile-ios-mediation-applovin.git",
            from: "13.6.3"
        ),
        .package(
            url: "https://github.com/googleads/googleads-mobile-ios-mediation-chartboost.git",
            from: "9.13.0"
        ),
        .package(
            url: "https://github.com/googleads/googleads-mobile-ios-mediation-dtexchange.git",
            from: "8.4.10"
        ),
        .package(
            url: "https://github.com/googleads/googleads-mobile-ios-mediation-inmobi.git",
            from: "11.4.1"
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AnyManagerSDKTarget",
            dependencies: [
                .product(name: "GoogleMobileAds",
                         package: "swift-package-manager-google-mobile-ads"),
                .product(name: "AppLovinAdapterTarget",
                         package: "googleads-mobile-ios-mediation-applovin"),
                .product(name: "ChartboostAdapterTarget",
                         package: "googleads-mobile-ios-mediation-chartboost"),
                .product(name: "DTExchangeAdapterTarget",
                         package: "googleads-mobile-ios-mediation-dtexchange"),
                .product(name: "InMobiAdapterTarget",
                         package: "googleads-mobile-ios-mediation-inmobi"),
            ],
            path: "Sources/AnyManagerSDK",
        ),
        .testTarget(
            name: "AnyManagerSDKTests",
            dependencies: ["AnyManagerSDKTarget"]
        ),
    ]
)
