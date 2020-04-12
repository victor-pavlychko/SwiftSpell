// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-spell",
    products: [
        .executable(name: "swift-spell", targets: ["swift-spell"]),
        .library(name: "SwiftSpell", targets: ["SwiftSpell"]),
        .library(name: "SwiftSpellCheckers", targets: ["SwiftSpellCheckers"]),
        .library(name: "SwiftSpellParser", targets: ["SwiftSpellParser"]),
        .library(name: "SwiftSpellUtils", targets: ["SwiftSpellUtils"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git", .upToNextMinor(from: "0.0.2")),
        .package(url: "https://github.com/apple/swift-log.git", .upToNextMinor(from: "1.2.0")),
        .package(url: "https://github.com/apple/swift-syntax.git", .revision("0.50200.0")),
        .package(url: "https://github.com/jpsim/Yams.git", .upToNextMinor(from: "2.0.0")),
    ],
    targets: [
        .target(name: "swift-spell", dependencies: ["ArgumentParser", "SwiftSpell"]),
        .target(name: "SwiftSpell", dependencies: ["SwiftSpellCheckers", "SwiftSpellParser", "SwiftSpellUtils", "Yams"]),
        .target(name: "SwiftSpellCheckers", dependencies: ["SwiftSpellUtils"]),
        .target(name: "SwiftSpellParser", dependencies: ["SwiftSyntax", "SwiftSpellUtils"]),
        .target(name: "SwiftSpellUtils", dependencies: []),
        .testTarget(name: "SwiftSpellTests", dependencies: ["SwiftSpell"]),
    ]
)
