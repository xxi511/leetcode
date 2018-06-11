
class Solution {
    func uniqueMorseRepresentations(_ words: [String]) -> Int {
        let code = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
        var output = [String]()
        for word in words {
            var str = ""
            for i in word.utf8 {
                str += code[Int(i)-97]
            }
            if !output.contains(str) {
                output.append(str)
            }
        }
        return output.count
    }
}
