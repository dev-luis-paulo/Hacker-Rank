import Foundation

/*
 * Complete the 'plusMinus' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func plusMinus(arr: [Int]) -> Void {
    // Write your code here
    var positivo = 0.0
    var negativo = 0.0
    var zero = 0.0
    
    for i in 0..<arr.count {
        if arr[i] > 0 {
            positivo += 1
        } else if arr[i] < 0 {
            negativo += 1
        } else {
            zero += 1
        }
    }
    
    print(positivo/Double(arr.count))
    print(negativo/Double(arr.count))
    print(zero/Double(arr.count))

}

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let arrTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == n else { fatalError("Bad input") }

plusMinus(arr: arr)
