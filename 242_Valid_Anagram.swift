// naive, 5.36
func isAnagram(_ s: String, _ t: String) -> Bool {
    return s.sorted(by: {$0 > $1}) == t.sorted(by: {$0 > $1})
}

// out of range of lead board XDD
func isAnagram(_ s: String, _ t: String) -> Bool {
    var tBack = t
    for char in s {
        guard let idx = tBack.index(of: char) else {return false}
        tBack.remove(at: idx)
    }
    return (tBack == "") ? true: false
}
