func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var resultArr = arr.filter { $0 % divisor == 0 }.sorted()
    return resultArr == [] ? [-1] : resultArr
}
