func solution(_ s:String) -> Bool
{
    var p = 0
    var y = 0

    for char in Array(s.lowercased()) {
        if char == "p" {
            p += 1
        } else if char == "y" {
            y += 1
        }
    }
    if p == y {
        return true
    } else {
        return false
    }
}

// 더 좋은 방법
func solution(_ s:String) -> Bool
{
    return s.lowercased().filter { $0 == "p" }.count == s.lowercased().filter { $0 == "y" }.count
}
