import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {

    var p = priorities
    var cnt = 0
    var priority = priorities[location]
    var l = location

    while p.count != 0 {
        if p.max()! != priority {
            if p[0] == p.max()! {
                p.removeFirst()
                cnt += 1
            } else {
                p.append(p[0])
                p.removeFirst()
            }
            l -= 1

            if l < 0 {
                l = p.count - 1
            }
        } else {
            for i in 0...l {
                if p[i] == priority {
                    cnt += 1
                }
            }
            break
        }
    }

    return cnt
}
