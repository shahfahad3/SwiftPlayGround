import Foundation

class ValidParenthesis {
    public func hasValidParenthesis(_ s: String) -> Bool {
        
        guard s.count % 2 == 0 else { return false }
        
        var stack: [Character] = []
        
        for c in s {
            switch c {
            case "]": guard stack.popLast() == "[" else {return false}
            case "}": guard stack.popLast() == "{" else {return false}
            case ")": guard stack.popLast() == "(" else {return false}
            default: stack.append(c)
            }
        }
        
        return stack.isEmpty
    }
}
