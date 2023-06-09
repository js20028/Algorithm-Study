import Foundation

var numberSet: Set<Int> = []

func solution(_ numbers:String) -> Int {
    var cnt = 0
    
    permutation(comb: "", others: numbers)
    
    for num in numberSet {
        if num == 0 || num == 1 {
            continue
        }
        if num == 2 || num == 3 {
            cnt += 1
            continue
        }
        
        for i in 2...Int(sqrt(Double(num))) {
            if (num % i == 0) {
                break
            }    
            if i == Int(sqrt(Double(num))) {
                cnt += 1
            }
        }
    } 
    
    return cnt
}

func permutation(comb: String, others: String) {
    if comb != "" {
        numberSet.insert(Int(comb)!)
    }
    
    for i in 0..<others.count {
        permutation(comb: comb + String(Array(others)[i]), others: String(others.prefix(i) + others.suffix(others.count-i-1)) )
    }
}
