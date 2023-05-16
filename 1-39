import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    
    var result = [Int: Double]()
    var players = Double(stages.count)
    
    for i in 1...N {
        result[i] = 0
    }
    
    for stage in stages {
        result[stage]? += 1.0
    }
    
    for stage in 1...N {
        let fail = result[stage]
        result[stage]! = fail! / players
        players -= fail!
    } 
    
    return result.sorted { $0.0 < $1.0 }.sorted { $0.1 > $1.1 }.map { $0.0 }
}
