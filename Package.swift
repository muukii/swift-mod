// swift-tools-version:5.1

import PackageDescription

let testsSuffix = "Tests"

let core = Target.target(
    name: "SwiftModCore",
    dependencies: [
        "SwiftSyntax",
        "SwiftToolsSupport-auto",
        "Yams",
    ]
)

let coreTests = Target.testTarget(
    name: core.name + testsSuffix,
    dependencies: [.target(name: core.name)] + core.dependencies
)

let rules = Target.target(
    name: "SwiftModRules",
    dependencies: [.target(name: core.name)] + core.dependencies
)

let rulesTests = Target.testTarget(
    name: rules.name + testsSuffix,
    dependencies: [.target(name: rules.name)] + rules.dependencies
)

let commands = Target.target(
    name: "SwiftModCommands",
    dependencies: [.target(name: rules.name)] + rules.dependencies
)

let commandsTests = Target.testTarget(
    name: commands.name + testsSuffix,
    dependencies: [.target(name: commands.name)] + commands.dependencies
)

let cli = Target.target(
    name: "swift-mod",
    dependencies: [.target(name: commands.name)] + commands.dependencies
)

let package = Package(
    name: "swift-mod",
    products: [
        .executable(name: "swift-mod", targets: [cli.name])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-syntax", .exact("0.50100.0")),
        .package(url: "https://github.com/apple/swift-tools-support-core.git", from: "0.0.1"),
        .package(url: "https://github.com/jpsim/Yams.git", from: "2.0.0")
    ],
    targets: [
        cli,
        commands,
        commandsTests,
        rules,
        rulesTests,
        core,
        coreTests,
    ],
    swiftLanguageVersions: [.v5]
)
