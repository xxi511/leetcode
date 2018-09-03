// naive , 83.87
func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    nums1 += nums2
    nums1 = nums1.sorted(by: {$0 < $1})
    let idx = nums1.index(of: 0) ?? 0
    for _ in 0..<n {
        nums1.remove(at: idx)
    }
}
