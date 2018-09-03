// 91.67%
func isPowerOfThree(_ n: Int) -> Bool {
    var num = n
    if num == 0 {
        return false
    }
    while num != 1 {
        if num % 3 != 0 {
            return false
        }
        num /= 3
    }
    return true
}



func isPowerOfThreeWTF(_ n: Int) -> Bool {
    // 1162261467 is 3^19,  3^20 is bigger than int
    return n > 0 && 1162261467 % n == 0
}
