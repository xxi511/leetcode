func judgeCircle(_ moves: String) -> Bool {
    var x = 0
    var y = 0
    for c in moves {
        switch c {
        case "U":
            x += 1
        case "D":
            x -= 1
        case "L":
            y -= 1
        case "R":
            y += 1
        default:
            return false
        }
    }
    return (x == 0) && (y == 0)
}
