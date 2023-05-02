func solution(_ s:String, _ n:Int) -> String {

    var stringArr = [String]()

    // "a" = 97, "z" = 122, "A" = 65, "Z" = 90 
    var arr = Array(s).map {
        Int(UnicodeScalar(String($0))!.value)
    }

    for var ascii in arr {
        if ascii == 32 {
            stringArr.append(" ")
        } else if ascii <= 90 {
            ascii += n
            if ascii > 90 {
                ascii -= 26
            }
            stringArr.append(String(UnicodeScalar(ascii)!))
        } else {
            ascii += n
            if ascii > 122 {
                ascii -= 26
            }
            stringArr.append(String(UnicodeScalar(ascii)!))
        }   
    }
    return stringArr.reduce("", +)
}
