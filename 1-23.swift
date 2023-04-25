func solution(_ strings:[String], _ n:Int) -> [String] {

    let arr = strings.sorted(by: {
        if Array($0)[n] == Array($1)[n] {
            return $0 < $1
        }
        return Array($0)[n] < Array($1)[n]
    })
    return arr
}


// 좀더 간단하게

func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted{  Array($0)[n] == Array($1)[n] ? $0 < $1 :  Array($0)[n] < Array($1)[n] }
}
