import Foundation

func solution(_ dartResult:String) -> Int {
    var powValue: [Character: Int] = ["S": 1, "D": 2, "T": 3]
    var scores = [Int]()
    var score = 0
    var isOne = false

    for item in dartResult {
        if item.isNumber {
            if item == "1" {
                isOne = true
                continue
            }
            if isOne && item == "0" {
                score = 10
                isOne = false
                continue
            }

            score = Int(String(item))!

        } else if !item.isNumber {
            if isOne {
                isOne = false
                score = 1
            }
            if item.isLetter {
                scores.append(Int(pow(Double(score), Double(powValue[item]!))))
                score = 0
            } else {
                if item == "*" {
                    if scores.count == 1 {
                        scores[0] *= 2
                    } else {
                        scores[scores.endIndex-1] *= 2
                        scores[scores.endIndex-2] *= 2
                    }
                }
                if item == "#" {
                    scores[scores.endIndex-1] *= -1
                }
            }
        }
    }

    return scores.reduce(0, +)
}
