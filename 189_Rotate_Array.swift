// 100%, haha
// note k might larger than nums.count
func rotate(_ nums: inout [Int], _ k: Int) {
    var shift = k
    if shift > nums.count {
        shift %= nums.count
    }
    let indice = arr.suffix(shift)

    nums = indice + Array(nums.dropLast(shift))
}
