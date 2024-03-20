// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "MultiSlider",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(name: "MultiSlider", targets: ["MultiSlider"]),
    ],
    dependencies: [
        .package(url: "https://github.com/yonat/SweeterSwift", from: "1.0.4"),
        .package(url: "https://github.com/yonat/AvailableHapticFeedback", from: "1.0.2"),
    ],
    targets: [
        .target(name: "MultiSlider", dependencies: ["SweeterSwift", "AvailableHapticFeedback"], path: "Sources", resources: [.copy("PrivacyInfo.xcprivacy")]),
    ],
    swiftLanguageVersions: [.v5]
)
