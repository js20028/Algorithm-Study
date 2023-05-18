import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var maxArr = [Int]()
    var minArr = [Int]()

    for card in sizes {
        if card[0] >= card[1] {
            maxArr.append(card[0])
            minArr.append(card[1])
        } else {
            maxArr.append(card[1])
            minArr.append(card[0])
        }
    }

    return maxArr.max()! * minArr.max()!
}
