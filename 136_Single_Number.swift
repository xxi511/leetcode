// 50%
func singleNumber(_ nums: [Int]) -> Int {
    var dic = [Int: Int]()
    for i in nums {
        dic[i] = (dic[i] == nil) ? 1: dic[i]!+1
    }
    for (k, v) in dic {
        if v == 1 {
            return k
        }
    }
    return -1
}

/*
 quickest answer on leetcode
 a ^ b = c
 c ^ b = a
 同一個東西做兩次xor會變回原本的數字
 所以result xor兩次會變回result，也就是0
 */
func singleNumber(_ nums: [Int]) -> Int {
    var result = 0
    for i in 0 ..< nums.count {
        result = nums[i] ^ result //^: XOR
    }
    return result
}
