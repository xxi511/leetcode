// naive, 33%
func majorityElement(_ nums: [Int]) -> Int {
    let bound = nums.count >> 1 + 1
    var dic = [Int: Int]()
    for i in nums {
        if dic[i] != nil {
            dic[i]! += 1
            if dic[i]! >= bound {
                return i
            }
        } else {
            dic[i] = 1
        }
    }
    return dic.sorted(by: {$0.value > $1.value}).first!.key
}
