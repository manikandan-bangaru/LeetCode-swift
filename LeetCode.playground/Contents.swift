import UIKit

var greeting = "Hello, playground"

extension String{
    
    func isContain(char : Character) -> Int?{
        var index : Int? = nil
        
        if let idx = self.range(of: String(char)){
        
            return self.distance(from: self.startIndex, to: idx.lowerBound)
        }
        return nil
    }
}
class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        var lensub = 0
        
        var subStr = ""
        for char in s{
            
//            let status = subStr.contains { c in
//                return c == char
//            }
            if let idx = subStr.range(of: String(char)){
                 subStr.removeSubrange(idx)
                
                print(String(subStr))
                print("\(char) not unique - str - \(subStr)")
            }else{
                subStr = subStr + String(char)
                print("\(char) Unique")
            }
//            if let index = index {
//                print("\(char) not unique")
////                let index = subStr.
//                let newStr = subStr.substring(from: String.Index(0, within: subStr) )
//                print(index)
//            }
//            else{
//                subStr = subStr + String(char)
//                print("\(char) Unique")
//            }
        }
        return lensub
    }
}
Solution().lengthOfLongestSubstring("PHelueo")
