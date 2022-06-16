import Foundation

//('aabbcc', [1, 2, 1, 2, 1, 2])
//output -
//3
//abc - [2,2,2]

//('abccbd', [0, 1, 2, 3, 4, 5])
//Output
//2
//abcbd [01345]
//note :- deleting Cost should be minimum
//MSFT - 1
public func solution(_ S : inout String, _ C : inout [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    // aabbcc
    // 3456
    var mem : [Int] = [Int]()

    for i in 0..<C.count-1
    {
            if S.index(S.startIndex , offsetBy : i) == S.index(S.startIndex , offsetBy :i)
            {
                var min = i+1
                if C[i] < C[i+1]
                {
                    min = i
                }
                let lastElement =  mem.removeLast()

                if S.index(S.startIndex,offsetBy:lastElement) ==  S.index(S.startIndex,offsetBy:min)
                {
                        if C[lastElement] < C[min]
                        {
                            min = lastElement
                        }
                        else
                        {
                            mem.append(lastElement)
                        }
                }
                mem.append(min)
            }
    }
    var result = 0
    for i in mem{
        let index = S.index(S.startIndex , offsetBy : i)
        S.remove(at : index)
       let cost =  C.remove(at : i)
        result = result + cost
    }
    return result
}
