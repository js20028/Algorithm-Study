import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {

    var left = (0,0)
    var right = (2,0)
    var result = ""

    for num in numbers {
        switch num {
        case 1:
            left = (0,3)
            result += "L"
        case 4:
            left = (0,2)
            result += "L"
        case 7:
            left = (0,1)
            result += "L"
        case 3:
            right = (2,3)
            result += "R"
        case 6:
            right = (2,2)
            result += "R"
        case 9:
            right = (2,1)
            result += "R"
        case 2:
            if abs(left.0 - 1) + abs(left.1 - 3) == abs(right.0 - 1) + abs(right.1 - 3) {
                if hand == "left" {
                    left = (1,3)
                    result += "L"
                } else {
                    right = (1,3)
                    result += "R"
                } 
            } else if abs(left.0 - 1) + abs(left.1 - 3) < abs(right.0 - 1) + abs(right.1 - 3) {
                left = (1,3)
                result += "L"
            } else {
                right = (1,3)
                result += "R"
            }
        case 5:
            if abs(left.0 - 1) + abs(left.1 - 2) == abs(right.0 - 1) + abs(right.1 - 2) {
                if hand == "left" {
                    left = (1,2)
                    result += "L"
                } else {
                    right = (1,2)
                    result += "R"
                } 
            } else if abs(left.0 - 1) + abs(left.1 - 2) < abs(right.0 - 1) + abs(right.1 - 2) {
                left = (1,2)
                result += "L"
            } else {
                right = (1,2)
                result += "R"
            }
        case 8:
            if abs(left.0 - 1) + abs(left.1 - 1) == abs(right.0 - 1) + abs(right.1 - 1) {
                if hand == "left" {
                    left = (1,1)
                    result += "L"
                } else {
                    right = (1,1)
                    result += "R"
                } 
            } else if abs(left.0 - 1) + abs(left.1 - 1) < abs(right.0 - 1) + abs(right.1 - 1) {
                left = (1,1)
                result += "L"
            } else {
                right = (1,1)
                result += "R"
            }
        case 0:
            if abs(left.0 - 1) + abs(left.1) == abs(right.0 - 1) + abs(right.1) {
                if hand == "left" {
                    left = (1,0)
                    result += "L"
                } else {
                    right = (1,0)
                    result += "R"
                } 
            } else if abs(left.0 - 1) + abs(left.1) < abs(right.0 - 1) + abs(right.1) {
                left = (1,0)
                result += "L"
            } else {
                right = (1,0)
                result += "R"
            }

        default:
            break
        }
    }

    return result
}
