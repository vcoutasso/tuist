import BundlePlugin
import ProjectDescription

let project = Project(
    name: "FeatureContracts",
    targets: [
        .target(
            name: "FeatureContracts",
            destinations: .iOS,
            product: .framework,
            bundleId: .bundleId(for: "FeatureContracts"),
            infoPlist: "Info.plist",
            sources: ["Sources/**"],
            resources: [
                // Path to resources can be defined here
                // "Resources/**"
            ],
            dependencies: [
                // Target dependencies can be defined here
                // .framework(path: "Frameworks/MyFramework.framework")
                .project(target: "Data", path: "../DataFramework"),
                .project(target: "Core", path: "../CoreFramework"),
            ]
        ),
        .target(
            name: "FeatureContractsTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: .bundleId(for: "FeatureContractsTests"),
            infoPlist: "Tests.plist",
            sources: "Tests/**",
            dependencies: [
                .target(name: "FeatureContracts"),
            ]
        ),
    ]
)
