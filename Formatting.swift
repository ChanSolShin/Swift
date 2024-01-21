import UIKit

var str = "12.34KB"

let size = 12.34

str = String(size) + "KB" // 실수를 문자열로 바꾸어서 타입을 일치 시킴

let b = true

str = String(b) + String(size) // 다른 타입을 String으로 바꿀때 사용
print(str)

str = "\(size)KB" // 이런식으로 해줄수있음

String(format: "%.5fkB", size) // 소수점 5자리까지
String(format: "Hello, %@", "Swift") // 문자열과 참조형식을 대체

String(format: "%d", 12) // 정수 지정
String(format: "%f", 12.34) // 실수 지정
String(format: "%.3f", 12.34) //소수점 3자리까지
String(format: "%10.3f", 12.34)  // 정수10자리까지 비워놓음, 소수점 3자리
String(format: "%010.3f", 12.34) // 정수 10자리까지 0으로 채워 넣음, 소수점 3자리

String(format: "[%d]", 123)
String(format: "[%10d]", 123)
String(format: "[%-10d]", 123) // 앞쪽으로 정렬

str = "\\" // \를 출력하는 방법
print(str)

print("A\tB")
print("A\nB")
print("\"Hello\" he said.") // ""(큰 따옴표를 표현)
print(#""Hello" he said."#) // \ 없이 큰따옴표 표현
print(#""Hello"\#n he said."#) // \ 없이 큰따옴표 표현

let value = 123
print(#"The value is \#(value)"#) // #이 있을때 type을 포매팅 하는 방법
