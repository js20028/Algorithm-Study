func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {

    var binaryArr1 = arr1.map { String($0, radix: 2) }
    var binaryArr2 = arr2.map { String($0, radix: 2) }
    var str = ""
    var answer: [String] = []
  
    for i in 0 ..< n {
        var item1 = String(repeating: "0", count: n-binaryArr1[i].count) + binaryArr1[i]
        var item2 = String(repeating: "0", count: n-binaryArr2[i].count) + binaryArr2[i]
        for j in 0 ..< n {
            str += Array(item1)[j] == "1" || Array(item2)[j] == "1" ? "#" : " "
        }
        answer.append(str)
        str = ""
    }
    return answer
}

// 더 좋은 풀이
func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {

    return (0..<n).map {
        let binary = String(arr1[$0] | arr2[$0], radix: 2)
        let padded = String(repeating: "0", count: n - binary.count) + binary
        return padded.reduce("") { $0 + ($1 == "0" ? " " : "#") }
    }
}
