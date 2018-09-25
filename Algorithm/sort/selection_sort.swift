/*
 找到第一小的數字，放在第一個位置；再找到第二小的數字，放在第二個位置。一次找一個數字，如此下去就會把所有數字按照順序排好了。
 */
func selection_sort(arr: [Int]) -> [Int] {
    var sort = arr

    for i in 0..<sort.count {
        var minIdx = i
        for idx in i..<sort.count {
            if sort[idx] < sort[minIdx] {
                minIdx = idx
            }
        }
        sort.swapAt(minIdx, i)

    }
    return sort
}

let arr = [3, 6, 9, -8, 1]
selection_sort(arr: arr)
