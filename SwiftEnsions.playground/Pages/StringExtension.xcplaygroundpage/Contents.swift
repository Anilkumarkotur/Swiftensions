//: [Previous](@previous)

import Foundation

extension String {
    
    public func emojiFlag() -> String? {
        guard Locale.isoRegionCodes.contains(self.uppercased()) else { return nil }
        var flagString = ""
        self.unicodeScalars.map { val in
            guard let scalar = UnicodeScalar(127397 + val.value) else { return }
            flagString.append(String(scalar))
        }
        return flagString
    }
    
    func url() -> URL? {
        return URL(string: self) ??  nil
    }

    func deletingPrefix(_ prefix: String) -> String {
        guard self.hasPrefix(prefix) else { return self }
        return String(self.dropFirst(prefix.count))
    }
    
    func removeWhiteSpace() -> String {
        return self.replacingOccurrences(of: " ", with: "")
    }
}

//MARK: emojiFlag Usage
"ID".emojiFlag()

//MARK: url Usage
"www.google.com".url()

//MARK: Remove the White space
"a ve n g e r s ".removeWhiteSpace()

//MARK: deletingPrefix Usage
let stringTouse = "my name is something"
stringTouse.deletingPrefix("my")



