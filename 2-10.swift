import Foundation

var cnt = 0
var nums = [Int]()
var tar = 0

func solution(_ numbers:[Int], _ target:Int) -> Int {

    nums = numbers
    tar = target
    reculsive(index: 0, sum: 0)

    return cnt
}

func reculsive(index: Int, sum: Int) {
    if index == nums.count {
        if sum == tar {
            cnt += 1
        }
        return
    } 

    reculsive(index: index+1, sum: sum + nums[index])
    reculsive(index: index+1, sum: sum - nums[index])
}
