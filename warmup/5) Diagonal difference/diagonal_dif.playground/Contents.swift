import Foundation

/*
 * Complete the 'diagonalDifference' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts 2D_INTEGER_ARRAY arr as parameter.
 */

func diagonalDifference(arr: [[Int]]) -> Int {
    // Write your code here
    var diagonalEsq: Int = 0
    var diagonalDir: Int = 0
    
    for i in 0..<arr.count {
        for j in 0..<arr.count {
            if i == j{
                diagonalEsq += arr[i][j]
            }
            
            if((i+j) == (arr.count - 1)){
                diagonalDir += arr[i][j];
            }
        }
    }
    
    let resultado = abs(diagonalEsq - diagonalDir)

    return resultado
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

var arr = [[Int]]()

for _ in 1...n {
    guard let arrRowTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

    let arrRow: [Int] = arrRowTemp.split(separator: " ").map {
        if let arrItem = Int($0) {
            return arrItem
        } else { fatalError("Bad input") }
    }

    guard arrRow.count == n else { fatalError("Bad input") }

    arr.append(arrRow)
}

guard arr.count == n else { fatalError("Bad input") }

let result = diagonalDifference(arr: arr)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
