import Foundation

//Given a pattern and a string str, find if str follows the same pattern.
//
//Here follow means a full match, such that there is a bijection between a letter in pattern and a non-empty word in str.
//
//Example:
//
//pattern = "abba", str = "dog cat cat dog" should return true.
//pattern = "abba", str = "dog cat cat fish" should return false.
//pattern = "aaaa", str = "dog cat cat dog" should return false.
//pattern = "abba", str = "dog dog dog dog" should return false.


public class WordPatern
{
    public static func findWordPatternMatch(_ pattern : String ,_ str : String ) -> Bool
    {
        let words = str.components(separatedBy : " ")
        
        print(words)
        
        var hashmap = [Character : String]()
        
        guard words.count == pattern.count else{
            return false
        }
        
        for (index,word) in words.enumerated()
        {
            let key = pattern[pattern.index(pattern.startIndex, offsetBy : index)]
            print("key - \(key)");
            if hashmap.keys.contains(key)
            {
                if hashmap[key] != word
                {
                   return false
               }
            }
            else if hashmap.values.contains(word)
            {
                return false
            }
            else
            {
                hashmap[key] = word
            }
        }
        return true
    }
}
