import Foundation

public func getTupleArray(array: [Int])
{
    let tupleArray = array.enumerated().map() { (index, value) in return [index, value]}
    print(tupleArray)
}

public func arrayToSet(array: [Int]) -> [Int] {
    var setArray: Set<Int> = []
    array.forEach() { value in setArray.insert(value)}
    return setArray.sorted() as? [Int] ?? []
}

struct MyStruct {
    var abc: String = "initila value"

    mutating func changeValue() {
        abc = "some other value" //Compile time error: Cannot assign to property: 'self' is immutable. Mark method 'mutating' to make 'self' mutable.
    }
}

public func divide(_ dividend: Double?, by divisor: Double?) -> Double? {
    guard let dividend = dividend, let divisor = divisor, divisor != 0 else { return nil }
  return dividend / divisor
}

precedencegroup ExponentPrecedence {
  higherThan: MultiplicationPrecedence
  associativity: right
}
infix operator ^^: ExponentPrecedence

public func ^^(base: Int, exponent: Int) -> Int {
    let l = Double(base)
    let r = Double(exponent)
    let p = pow(l, r)
    return p > Double(Int.max) ? 0 : Int(p)
}

