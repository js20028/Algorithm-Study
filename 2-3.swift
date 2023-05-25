import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var days = [Int]()

    for i in 0..<speeds.count {
        days.append((100 - progresses[i]) % speeds[i] == 0 ? (100 - progresses[i]) / speeds[i] : (100 - progresses[i]) / speeds[i] + 1 )
    }

    var a = days[0]
    var result = [Int]()
    var cnt = 0

    for day in days {
        if day > a {
            result.append(cnt)
            cnt = 1
            a = day
        } else {
            cnt += 1
            continue
        }

    }
    result.append(cnt)

    return result
}
