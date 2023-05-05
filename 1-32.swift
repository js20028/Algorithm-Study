func solution(_ s:String) -> String {

    var stringArr = [String]()
    var strIndex = 0
    for item in Array(s) {
        if item == " " {
            stringArr.append(String(item))
            strIndex = 0
        } else {
            stringArr.append(strIndex % 2 == 0 ? item.uppercased() : item.lowercased())
            strIndex += 1
        }
    }
    return stringArr.reduce("", +)
}
