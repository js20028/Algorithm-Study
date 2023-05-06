import Foundation

func solution(_ n:Int64) -> Int64 {
    if sqrt(Double(n)) - Double(Int(sqrt(Double(n)))) == 0 {
        return Int64(pow(sqrt(Double(n)) + 1.0, 2))
    } else {
        return -1
    }
}
