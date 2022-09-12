import Foundation

public func convertStringToIntWithMap(stringArray: [String]) -> [Int] {
    var intArray: [Int] = []
    
    intArray = stringArray.map() { Int($0) ?? 0 }
    
    return intArray
}

public func convertStringToIntWithCompactMap(stringArray: [String]) -> [Int] {
    var intArray: [Int] = []
    
    intArray = stringArray.compactMap() { Int($0) }
    
    return intArray
}

public func flatMap(arrayOfArray: [[Int]]) {
    
    print(arrayOfArray.flatMap() { return $0 })
    
}
