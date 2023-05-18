import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var colBoard = [[Int]]()
    var resultArr = [Int]()
    var result = 0
    
    for i in 0..<board.count {
        var col = [Int]()
        for item in board {
            col.append(item[i])
        }
        colBoard.append(col)
    }
    
    for move in moves {
        for i in 0..<colBoard[move-1].count {
            if colBoard[move-1][i] != 0 {
                resultArr.append(colBoard[move-1][i])
                colBoard[move-1][i] = 0
                break
            }
        }
        if resultArr.count > 1 {
            if resultArr[resultArr.count-1] == resultArr[resultArr.count-2] {
                resultArr.removeSubrange(resultArr.count-2...resultArr.count-1)
                print(resultArr)
                result += 2
            }
        }
    }
    
    return result
}
