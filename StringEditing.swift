import UIKit

var str = "Hello"
str.append(", ") // str뒤에 새로운 문자열 추가
str // str 값이 변함

let s = str.appending("Swift") // 새로운 문자열에 str뒤에 새로운 문자열 추가
str // str 값이 변하지 않음
s

"File size: ".appendingFormat("%.1f", 12.345) // 원본을 바꾸지 않고 새로운 문자열을 리턴

str.insert(",", at: str.index(str.startIndex, offsetBy: 5)) // 문자열 중간에 문자를 추가

if let sIndex = str.firstIndex(of: "H"){  // str의 첫번째 문자가 H인지 검사, sIndex에 첫번째라는 값을 넣음
    str.insert(contentsOf: "Awesome", at: sIndex) // H위치(첫번째)에 문자열 추가
} // 검사할때는 새로운 상수를 만들어서 검사해야함
