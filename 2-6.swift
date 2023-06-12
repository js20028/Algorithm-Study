import Foundation

func solution(_ numbers:[Int]) -> String {
    let arr = numbers.map { String($0) }.sorted { Int($0 + $1)! > Int($1 + $0)! }   
    
    return arr[0] == "0" ? "0" : arr.reduce("", +)
}
