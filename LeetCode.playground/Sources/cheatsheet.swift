import Foundation

class CheatSheet
{
    func notes()
    {
        let str = "string1 str 2 str 3"
        //get count
         // -> total number of char
        print(str.count)
//        split the string usign space
        
        let splitedStr = str.components(separatedBy : " ")
        
        print(splitedStr)
        
//        get char from i posiontion
        
        let i = 2
        
        let strIndex = str.index(str.startIndex , offsetBy: i)
        let char = str[strIndex]
        print(char)
        
        //Set insert result type
        var set : Set<Int> = []
        let resultDict = set.insert(1)
        if resultDict.inserted == false
        {
            print("dup presented")
        }
        resultDict.memberAfterInsert
        
        //Reverse array
        let nums = [1,2,4]
        nums.reversed()
        //create aray with repeating numbers
        let arr = Array(repeating : 1 , count: nums.count)
        
    }
}
