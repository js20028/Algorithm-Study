import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    var dateArr = privacies.map { $0.components(separatedBy: " ") }.map { $0[0].components(separatedBy: ".").flatMap { Int($0) } }
    var typeArr = privacies.map { $0.components(separatedBy: " ") }.map { $0[1] }
    var termArr = terms.map { $0.components(separatedBy: " ") }
    var resultArr = [Int]()
  
    let todayArr = today.components(separatedBy: ".").map { Int($0)! }
    let day = ((todayArr[0]-1)*12 + todayArr[1]) * 28 + todayArr[2]

    for i in 0..<typeArr.count {
        var t = 0
        for term in termArr {
            if term[0] == typeArr[i] {
                t = Int(String(term[1]))! * 28
            }
        }
        if ((dateArr[i][0]-1)*12 + dateArr[i][1]) * 28 + dateArr[i][2] + t <= day {
            resultArr.append(i+1)
        }
    }
  
    return resultArr
}
