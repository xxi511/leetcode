
class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var num = 0
        for c in S {
            if J.contains(c) {
                num = num+1
            }
        }
        return num
    }
}
