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
    
    public static func prodOf(_ nums : [Int]) -> [Int]
    {
//                    [1,2,3,4]
//        prefix ->   [1,1,2,6]
//        postfix ->  [24,12,4,1]
//        result -> [prefix[i] * postfix[i]]
        
        var prefix = Array(repeating : 1 , count : nums.count)
        var postfix =  Array(repeating : 1 , count : nums.count)
//        postfix.reserveCapacity(nums.count)
//        prefix.reserveCapacity(nums.count)
        var result = [Int]()
        prefix.append(1)
       
        postfix[nums.count-1] = 1
        print(postfix)
        for i in 1..<nums.count
        {
            prefix.append(nums[i-1] * prefix[i-1])
        }
        for i in (nums.count-2)...0
        {
            postfix[i] = nums[i+1] * postfix[i+1]
        }
                                    
        for i in 0...nums.count-1
        {
            result.append(prefix[i] * postfix[i])
        }
        return result
    }
}
