import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var dict = [String: Int]()
    var result = 1

    for cloth in clothes {
        dict[cloth[1]] = 0 
    }

    for cloth in clothes {
        dict[cloth[1]]! += 1
    }

    for d in dict {
        result *= (d.value + 1)
    }

    return result - 1
}
