import Foundation

func solution(_ citations:[Int]) -> Int {
    var result = 0
    for i in 0...citations.count {
        if citations.filter { $0 >= i }.count >= i {
            result = i
        } 
    }
    return result
}
