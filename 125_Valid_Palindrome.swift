// naive, 5%
func isPalindrome(_ s: String) -> Bool {
    if s == "" {return true}
    let str = s.lowercased()
    //48-57, 97-122
    let allow = Array(48...57) + Array(97...122)
    let arr = str.map {$0}.filter {
        allow.contains(Int($0.unicodeScalars.first!.value))
    }

    let count = arr.count
    let bound = count >> 1
    if bound <= 0 {
        return true
    }
    for i in 0...bound {
        if arr[i] != arr[count-1-i] {
            return false
        }
    }
    return true
}


// best answer on leetcode
func isPalindrome(_ s: String) -> Bool {
    if s == "" {
        return true
    }
    let str = s.lowercased()
    let arr = Array(str.utf16).map { Int($0) }
    var l = 0, r = arr.count - 1
    while (l < r) {
        while l < r && !check(arr[l]) { l += 1 }
        while l < r && !check(arr[r]) { r -= 1 }
        if arr[l] != arr[r] {
            return false
        } else {
            l += 1
            r -= 1
        }
    }
    return true
}

func check(_ ch: Int) -> Bool {
    return (ch >= 97 && ch <= 122) || (ch >= 48 && ch <= 57)
}
