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
}


"ID".emojiFlag()
