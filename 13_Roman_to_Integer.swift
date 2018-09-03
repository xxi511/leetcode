// naive answer, 18.24
func romanToInt(_ s: String) -> Int {
    let dic:[String: Int] = ["I": 1,
                             "V": 5,
                             "X": 10,
                             "L": 50,
                             "C": 100,
                             "D": 500,
                             "M": 1000]
    let arr = s.map{dic[String($0)]!}
    let count = arr.count
    var ans = 0
    for (idx, val) in arr.enumerated() {
        if idx+1 < count {
            if val < arr[idx+1] {
                ans -= val
                continue
            }
        }
        ans += val
    }
    return ans
}

// same level
func romanToInt(_ s: String) -> Int {
    let dic:[String: Int] = ["I": 1,
                             "V": 5,
                             "X": 10,
                             "L": 50,
                             "C": 100,
                             "D": 500,
                             "M": 1000]
    let arr = s.map{dic[String($0)]!}

    var ans = 0
    var last = 0
    for val in arr {
        ans += val
        if val > last {
            ans -= 2*last
        }
        last = val
    }
    return ans
}
