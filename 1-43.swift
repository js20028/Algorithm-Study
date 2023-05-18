import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var dict: [String:Int] = ["R":0, "T":0, "C":0, "F":0, "J":0, "M":0, "A":0, "N":0]
    var score = [3,2,1,0,1,2,3]

    var result = ""

    for i in 0..<survey.count {
        switch survey[i] {
        case "RT":
            if choices[i] < 4 {
                dict["R"]! += score[choices[i]-1]
            } else {
                dict["T"]! += score[choices[i]-1]
            }
        case "TR":
            if choices[i] < 4 {
                dict["T"]! += score[choices[i]-1]
            } else {
                dict["R"]! += score[choices[i]-1]
            }
        case "FC":
            if choices[i] < 4 {
                dict["F"]! += score[choices[i]-1]
            } else {
                dict["C"]! += score[choices[i]-1]
            }
        case "CF":
            if choices[i] < 4 {
                dict["C"]! += score[choices[i]-1]
            } else {
                dict["F"]! += score[choices[i]-1]
            }
        case "MJ":
            if choices[i] < 4 {
                dict["M"]! += score[choices[i]-1]
            } else {
                dict["J"]! += score[choices[i]-1]
            }
        case "JM":
            if choices[i] < 4 {
                dict["J"]! += score[choices[i]-1]
            } else {
                dict["M"]! += score[choices[i]-1]
            }
        case "AN":
            if choices[i] < 4 {
                dict["A"]! += score[choices[i]-1]
            } else {
                dict["N"]! += score[choices[i]-1]
            }
        case "NA":
            if choices[i] < 4 {
                dict["N"]! += score[choices[i]-1]
            } else {
                dict["A"]! += score[choices[i]-1]
            }
        default: 
            break
        }
    }
    if dict["R"]! >= dict["T"]! {
        result += "R"
    } else {
        result += "T"
    }

    if dict["C"]! >= dict["F"]! {
        result += "C"
    } else {
        result += "F"
    }

    if dict["J"]! >= dict["M"]! {
        result += "J"
    } else {
        result += "M"
    }

    if dict["A"]! >= dict["N"]! {
        result += "A"
    } else {
        result += "N"
    }

    return result
}
