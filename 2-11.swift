import Foundation

var result = 0

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {

    dfs(remain: k, dungeon: dungeons, cnt: 0)
  
    return result
}

func dfs(remain: Int, dungeon: [[Int]], cnt: Int) {
    if dungeon.count == 0 {
        result = max(result, cnt)
        return
    }

    for (index, dun) in dungeon.enumerated() {
        if remain >= dun[0] {
            var ds = dungeon
            ds.remove(at: index)
            dfs(remain: remain-dun[1], dungeon: ds, cnt: cnt+1) 
        } else {
            result = max(result, cnt)
        }
    }
}
