import Foundation
//let array = [1, 2, 2, 3, 4, 5]
//getTupleArray(array: array)
//arrayToSet(array: array)
//
//divide(5, by: 0)
//
//99^^99
//
//let stringArray = ["2", "3", "a"]
//convertStringToIntWithMap(stringArray: stringArray)
//
//
//let numbers = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
//let result = numbers.flatMap({ $0 })
//
//print(result)
//
//flatMap(arrayOfArray: [[1, 2], [3, 4]])

//anagram(str1: "qwerty", str2: "wertyq")

print(SampleFiles.image) // Prints: "../resources/sample-image.png"
print(SampleFiles.$image) // Prints: "sample-image.png"

//func flaten(array: [Any]) -> [Any] {
//    var finalArray = [Any]()
//    for item in array {
//        if let subArray = item as? [Any] {
//            finalArray = finalArray + flaten(array: subArray)
//
//        } else {
//            finalArray.append(item)
//        }
//    }
//    return finalArray
//}
//
//let a = [2, [3], 4, [5, [6]]] as [Any]
//
//print(flaten(array: a))

func romanToInt(_ s: String) -> Int {
        let romanDic : [Character : Int] = ["I" : 1, "V" : 5, "X" : 10, "L" : 50, "C" : 100, "D" : 500, "M": 1000]
         var previous = 0
        var result = 0
        
        for i in s {
            let value = romanDic[i] ?? 0
            result += value <= previous ? previous : -previous
            previous = value
            print("res: \(result) Prev: \(previous)")
        }
        result += previous
        return result
    }

print(romanToInt("XXXVIII"))
