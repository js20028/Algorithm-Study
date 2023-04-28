import Foundation

func solution(_ n:Int) -> Int {
    var cnt = 2
    if n == 2 { 
        return 1 
    } else if n == 3 { 
        return 2 
    } else {
        for num in 4...n {
            for i in 2...Int(sqrt(Double(num))) {
                if (num % i == 0) {
                    break
                }    
                if i == Int(sqrt(Double(num))) {
                    cnt += 1
                }
            }
        }
    }

    return cnt
}
