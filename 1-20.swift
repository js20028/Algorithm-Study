func solution(_ s:String) -> String {
    
    if s.count == 1 {
        let endIndex = s.index(s.startIndex, offsetBy: s.count / 2)
        return String(s[endIndex])
    } else {
        let startIndex = s.index(s.startIndex, offsetBy: s.count / 2 - 1)
        let endIndex = s.index(s.startIndex, offsetBy: s.count / 2)
        
        if s.count % 2 == 0 {
            return String(s[startIndex ... endIndex])
        } else {
            return String(s[endIndex])
        }
    }  
}
