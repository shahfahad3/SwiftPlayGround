class LongestPrefix {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard strs.count >= 2 else {
            return strs.first ?? ""
        }
        
        let shortestStringLength = strs.map { $0.count }.min()!
        
        let stringArray = strs.map { Array($0) }
        
        var answer = ""
        
        for index in 0..<shortestStringLength {
            let commonChar = stringArray[0][index]
            for chars in stringArray[1...] {
                if chars[index] != commonChar {
                    return answer
                }
            }
            answer += String(commonChar)
        }
        
        return answer
}
}
