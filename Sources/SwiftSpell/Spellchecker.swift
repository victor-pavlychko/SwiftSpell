import Foundation

class Spellchecker {
    private let dictionary: Set<String>

    init() throws {
        let url = URL(fileURLWithPath: "/usr/share/dict/words")
        let dictionary = try String(contentsOf: url)

        self.dictionary = dictionary
            .split { $0.isWhitespace || $0.isNewline }
            .map { $0.lowercased() }
            .unique()
    }

    func checkWord(_ word: String) -> Bool {
        return dictionary.contains(word.lowercased())
    }
}
