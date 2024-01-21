import UIKit

var str = "Hello, Swift String"
var emptyStr = "" // 빈문자열 선언
emptyStr = String()

let a = String(true) // 다른 타입을 문자열로만들기
let b = String(12)
let c = String(12.34)
let d = String(str)

let hex = String(123, radix: 16) // 123을 16진수로 바꾸는 코드. radix를 8로 하면 8진수, 2로 하면 2진수
let repeatStr = String(repeating: "Hi", count: 5) // 문자를 반복하는 코드
print(repeatStr)

let clap="\u{1f44f}" // 유니코드. 박수모양
print(clap)

let e = "\(a) \(b)" // 이렇게해서 연결 가능
let f = a + b // + 연산자를 이용해서 연결 가능
str += "!!" // 이렇게 바로뒤에 붙이는거도 가능

str.count // 문자열의 글자수
str.count == 0 // 문자열이 비어있는지
str.isEmpty // 문자열이 비어있는지

str == "Apple"
"apple" != "Apple" // 아스키 코드로 비교
"apple" < "Apple"

str.lowercased() // 문자열을 모두 소문자로 바꾸는 함수
str.uppercased() // 문자열을 모두 대문자로 바꾸는 함수
str.capitalized // 문자열의 속한 어절의 첫번째 문자를 대문자로, 나머지는 모두 소문자로

for char in "Hello"{ // 문자열에 있는 문자를 순서대로 출력. 배열처럼 이용가능
    print(char)
}

let num = "1234567890"
num.randomElement() // 랜덤한 문자값

String(num.shuffled()) // 문자열의 문자순서를 랜덤으로
