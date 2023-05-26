import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {

    let all = brown + yellow
    var result = [Int]()

    for i in 1...yellow {
        if yellow % i == 0 {
            if all % (i+2) == 0 {
                if (all / (i+2)) * 2 + i * 2 == brown {
                    result.append(all / (i+2))
                    result.append(i+2)
                    break
                }
            }
        }
    }

    return result
}
