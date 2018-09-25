func bubbleSort(arr: [Int]) -> [Int] {
    var sort = arr
    for i in 0..<sort.count {
        for j in i+1..<sort.count {
            if sort[i] > sort[j] {
                let tmp = sort[i]
                sort[i] = sort[j]
                sort[j] = tmp
            }
        }
    }
    return sort
}

let arr = [5, 1,  8, 4, 2, 8]
bubbleSort(arr: arr)
