
class Solution {
    func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
        var b = A
        for (idx, row) in A.enumerated()  {
            let tmp = row.reversed()
            b[idx] = tmp.map({$0 == 1 ? 0: 1})
        }
        return b

    }
}
