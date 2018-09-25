func insertionSort(arr: [Int]) -> [Int] {
    var sort = arr

    for i in 1..<arr.count {

        var j = i-1
        let key = sort[i]
        while j >= 0 && sort[j] > key {
            sort[j+1] = sort[j]
            j -= 1
        }
        sort[j+1] = key
        print(sort)
    }
    return sort
}

let arr = [4,3,2,10,12,1,5,6]
insertionSort(arr: arr)
