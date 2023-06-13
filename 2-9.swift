import Foundation

func solution(_ number:String, _ k:Int) -> String {
    var cnt = k
    var nums = Array(number).map { String($0) }
    var stack = [String]()
    var i = 0
    
    while cnt > 0 && i < nums.count {
        if stack.count == 0 {
            stack.append(nums[i])
            i += 1
            continue
        } 
        
        while cnt > 0 && stack.count > 0 {
            if Int(stack.last!)! < Int(nums[i])! {
                stack.removeLast()
                cnt -= 1
            } else {
                stack.append(nums[i])
                i += 1
                break
            }
        }
        
        if cnt == 0 {
            for j in i..<nums.count {
                stack.append(nums[j])
            }
        }
    }
    
    if cnt > 0 {
        for i in 0..<cnt {
            stack.removeLast()
        }
    }
    
    return stack.reduce("", +)
}
