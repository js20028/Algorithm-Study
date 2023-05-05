func solution(_ n:Int) -> Int
{
    return Array(String(n)).map { Int(String($0))! }.reduce(0, +)
}

// String 타입에도 reduce 가능
func solution(_ n:Int) -> Int
{
    return String(n).reduce(0, {$0+Int(String($1))!});
}
