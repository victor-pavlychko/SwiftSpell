import ArgumentParser
import Foundation

struct SwiftSpell: ParsableCommand {
    static var configuration = CommandConfiguration(
        abstract: "A utility for checking spelling in Swift code.",
        subcommands: [Check.self],
        defaultSubcommand: Check.self
    )
}

SwiftSpell.main()
