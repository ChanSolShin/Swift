import UIKit

var name = "Swift" //var은 변수. (값을 변경 할 수 있음)
var thisYear = 2023
var valid = true // false

name
print(name)
print(thisYear)
print(valid)

name = "Steve" // var를 붙일수 없음. 같은 이름의 변수는 두번 선언 될 수 없음.
name = "윤아"

print(name)
var anotherName = name

anotherName = "Tim"

print(name, anotherName)

let Letname = "Yoona" // let은 상수. (값을 변경 할 수 없음) like static
//장점: 코드가 안전해짐, 컴파일러가 최적화를해서 실행속도가 빨라짐


