import Foundation

/*
 * Complete the 'miniMaxSum' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func miniMaxSum(arr: [Int]) -> Void {
    // Write your code here
    var min = 0
    var max = 0
    let arrayOrdenado = arr.sorted()
    
    for i in 0..<arrayOrdenado.count - 1 {
        min += arrayOrdenado[i]
    }
    
    for i in 1..<arrayOrdenado.count {
        max += arrayOrdenado[i]
    }
    
    print(min, max)
}

guard let arrTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == 5 else { fatalError("Bad input") }

miniMaxSum(arr: arr)
