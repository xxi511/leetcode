// naive, 45%
// too complex, just add is fine
func generate(_ numRows: Int) -> [[Int]] {
    if numRows <= 0 {
        return []
    }
    if numRows == 1 {
        return [[1]]
    } else if numRows == 2 {
        return [[1], [1, 1]]
    }

    var pascal = [[1], [1, 1]]
    for i in 3...numRows {
        var tmp = Array(repeatElement(1, count: i))
        let isOdd = (i&1 == 1)
        let count = tmp.count
        let mid = (isOdd) ? i>>1: i>>1-1
        for col in 1..<count {
            if col <= mid {
                tmp[col] = pascal[i-1-1][col-1] + pascal[i-1-1][col]
            } else {
                tmp[col] = (isOdd) ? tmp[mid<<1 - col]: tmp[count-col-1]
            }
        }
        pascal.append(tmp)
    }
    return pascal
}
