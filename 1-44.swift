import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {

    var dict = [String: Int]()
    var resultDict = [String: Int]()
    let newReport = Array(Set(report)).map { $0.components(separatedBy: " ")}
    var resultArr = [Int]()

    for id in id_list {
        dict[id] = 0
        resultDict[id] = 0
    }
    for i in 0..<newReport.count {
        dict[newReport[i][1]]! += 1
    }

    var arr = dict.filter { $0.value >= k }.map { $0.key }

    for item in arr {
        for i in 0..<newReport.count {
            if newReport[i][1] == item {
                resultDict[newReport[i][0]]! += 1
            }
        }
    }

    for id in id_list {
        resultArr.append(resultDict[id]!)
    }

    return resultArr
}
