import ProjectDescription

let project = Project(
    name: "App",
    targets: [
        .target(
            name: "App",
            destinations: .iOS,
            product: .app,
            bundleId: "dev.tuist.App",
            infoPlist: "Config/App-Info.plist",
            sources: "Sources/**",
            dependencies: [
                .project(target: "Framework", path: "../Framework"),
            ]
        ),
    ]
)
