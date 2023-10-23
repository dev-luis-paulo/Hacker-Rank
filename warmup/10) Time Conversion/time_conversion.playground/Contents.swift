import Foundation

/*
 * Complete the 'timeConversion' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts STRING s as parameter.
 */

func timeConversion(s: String) -> String {
    // Write your code here
    var hora = String(s.prefix(2))
    let minuto = String(s[s.index(s.startIndex, offsetBy: 3) ..< s.index(s.startIndex, offsetBy: 5)])
    let segundo = String(s[s.index(s.startIndex, offsetBy: 6) ..< s.index(s.startIndex, offsetBy: 8)])
    let amPM = String(s[s.index(s.startIndex, offsetBy: 8) ..< s.index(s.startIndex, offsetBy: 10)])
    var horaFormato24h: String

    if hora == "12" && amPM == "AM" {
        hora = "00"
    } else if amPM == "PM" {
        if let hour = Int(hora) {
            if hour != 12 {
                hora = String(hour + 12)
            }
        }
    }

    horaFormato24h = hora + ":" + minuto + ":" + segundo

    return horaFormato24h
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let s = readLine() else { fatalError("Bad input") }

let result = timeConversion(s: s)

fileHandle.write(result.data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
