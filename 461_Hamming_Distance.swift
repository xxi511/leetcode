
class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        let dif = x ^ y
        // best answer is
        // return dif.nonzeroBitCount
        let binary = Array(String(dif, radix:2))
        return binary.filter({$0 == "1"}).count
    }
}
