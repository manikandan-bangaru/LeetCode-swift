import Foundation


extension Array where Element  == Int
{
    var prod : Int{
        var result = 1
        for n in self
        {
            result = result * n
        }
        return result
    }
}
public class ProdOfArrayExpectSelf
{
    public static func resultBruteForce(_ nums : [Int]) -> [Int]
    {
        //Broute force
        var result = [Int]()
        
        var leftStack = [Int]()
        
        var rightStack = [Int]()
        
        for num in nums.reversed()
        {
            rightStack.append(num)
        }
        
        while(rightStack.count > 0)
        {
            let leftProd = leftStack.prod
            let righProd = rightStack.prod
            result.append(leftProd * righProd)
            print(result)
            if rightStack.isEmpty == false
            {
            let element = rightStack.removeLast()
            leftStack.append(element)
            }
        }
        
        return result
    }
    //Efficient O(n)
    
    public static func prodOf_withExtraMem(_ nums : [Int]) -> [Int]
    {
//                    [1,2,3,4]
//        prefix ->   [1,1,2,6]
//        postfix ->  [24,12,4,1]
//        result -> [prefix[i] * postfix[i]]
        
//        time - o(n)
//        space - o(n)
        
        var prefix = Array(repeating : 1 , count : nums.count)
        var postfix =  Array(repeating : 1 , count : nums.count)
        var result = [Int]()

        for i in 1..<nums.count
        {
            prefix[i] = nums[i-1] * prefix[i-1]
        }
        for i in (0...(nums.count-2)).reversed()
        {
            postfix[i] = nums[i+1] * postfix[i+1]
        }
                                    
        for i in 0..<nums.count
        {
            result.append(prefix[i] * postfix[i])
        }
        return result
    }
    public static func prodOf(_ nums : [Int]) -> [Int]
    {
//        [1,2,3,4]
//        [1,1,]
//        time - O(n)
//        space - O(1)
        var result = Array(repeating : 1 , count : nums.count)
        for i in 1..<nums.count
        {
            result[i] = result[i-1] * nums[i-1]
        }
        var postFixMax = 1
        for i in (0..<nums.count).reversed() 
        {
            result[i] = result[i] * postFixMax
            postFixMax = postFixMax * nums[i]
        }
        return result
    }
}
