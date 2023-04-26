func solution(_ s:String) -> String {
    let newString = s.sorted(by: >).reduce(""){ String($0) + String($1) }
    return newString
}
