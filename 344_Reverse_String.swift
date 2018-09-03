
// 11 %, wt....
func reverseString(_ s: String) -> String {
    let arr = s.map {String($0)}.reversed()
    return arr.joined()
}

// 46.2
func reverseString(_ s: String) -> String {

    let arr = s.reversed()
    var str = ""
    for c in arr {
        str.append(c)
    }
    return str
}

// 10 %
func reverseString(_ s: String) -> String {

    var str = ""
    let idx = s.startIndex
    for c in s {
        str.insert(c, at: idx)
    }
    return str
}

// best solution of leetcode
func reverseString(_ s: String) -> String {
    guard !s.isEmpty else {
        return s
    }

    var result = ""
    var index = s.endIndex

    repeat {
        index = s.index(before: index)
        result.append(s[index])
    } while index > s.startIndex

    return result
}
