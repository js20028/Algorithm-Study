func solution(_ n:Int) -> String {
    var arr = [String]()
    for i in 0 ..< n {
        arr.append(i % 2 == 0 ? "수" : "박")
    }    
    return arr.reduce("", +)
}
