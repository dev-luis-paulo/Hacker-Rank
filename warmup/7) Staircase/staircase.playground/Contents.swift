import Foundation

/*
 * Complete the 'staircase' function below.
 *
 * The function accepts INTEGER n as parameter.
 */

func staircase(n: Int) -> Void {
    // Write your code here
    var espacos: String
    var hashtags: String
    var qtdEspacos = n-1
    
    for i in 1...n {
        espacos = String(repeating: " ", count: qtdEspacos)
        hashtags = String(repeating: "#", count: i)
        print(espacos+hashtags)
        qtdEspacos -= 1
    }
}

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

staircase(n: n)
