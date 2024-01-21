import UIKit

enum Alignment { // 열거형의 이름이 정해졌으므로 케이스 이름은 간단하게
    case left // case는 값이 바뀌지 않음
    case center
    case right
}

var textAlignment = Alignment.center

textAlignment = .left // 무슨 열거형인지 알고 있으므로 열거형의 이름을 생략하고 .만 입력해도 됨.

if textAlignment == .center {
    
}

switch textAlignment { // 열거형은 스위치문을 사용하는것이 간편함
case .left:
    print("left")
case .center:
    print("center")
case .right:
    print("right")
}

"A".caseInsensitiveCompare("a") == .orderedSame // 대소문자를 구분하지 않음.


