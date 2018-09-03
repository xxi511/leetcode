// naive answer, 33.91
func strStr(_ haystack: String, _ needle: String) -> Int {
    guard needle != "" else {return 0}
    guard var idx = haystack.index(of: needle.first!) else {return -1}
    while idx.encodedOffset + needle.count <= haystack.count {
        let end = haystack.index(idx, offsetBy: needle.count)
        let sub = haystack[idx..<end]
        if sub == needle {
            return idx.encodedOffset
        } else {
            idx = haystack.index(after: idx)
        }
    }
    return -1
}

// minor improvement, 65.22
// reduce loop
func strStr(_ haystack: String, _ needle: String) -> Int {
    guard needle != "" else {return 0}
    var source = haystack
    var del = 0
    while true {
        // return "First" index equal needle.first
        guard let idx = source.index(of: needle.first!) else {return -1}
        guard let end = source.index(idx, offsetBy: needle.count, limitedBy: source.endIndex) else {
            return -1
        }
        let sub = source[idx..<end]
        if sub == needle {
            return idx.encodedOffset + del
        } else {
            // remove the char so that i can get next index
            source.remove(at: idx)
            del += 1
        }
    }
}
