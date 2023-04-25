func solution(_ a:Int, _ b:Int) -> Int64 {
    var sum = 0
    if a == b {
        return Int64(a)
    } else if a < b {
        for num in a ... b {
            sum += num
        }
    } else {
        for num in b ... a {
            sum += num
        }
    }

    return Int64(sum)
}

// 더 좋은 풀이 
func solution(_ a:Int, _ b:Int) -> Int64 {
    return Int64(Array(a > b ? b...a : a...b).reduce(0, +))
}
