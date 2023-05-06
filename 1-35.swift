func solution(_ n:Int64) -> Int64 {

    return Int64(String(n).sorted(by: >).reduce("") { String($0) + String($1) })!
}
