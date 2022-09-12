import Foundation

public func anagram(str1: String, str2: String) -> Bool {
    
    if str1.count != str2.count {
        return false
    }
    
    let sortedStr1 = str1.sorted(by: { $0 < $1 })
    let sortedStr2 = str2.sorted(by: { $0 < $1 })
    
    for i in 0..<sortedStr1.count {
        if sortedStr1[i] != sortedStr2[i] {
            return false
        }
    }
        return true
}
