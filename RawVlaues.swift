import UIKit

enum Alignment: Int {
    case left
    case right = 100
    case center
}

Alignment.left.rawValue
Alignment.right.rawValue
Alignment.center.rawValue // 원시값을 자동으로 저장하지 않으면 기준값(이전의 값) 보다 +1

Alignment(rawValue: 0) // 0번째 열거형
Alignment(rawValue: 200) // 해당하는 값이 없으므로 nil

enum Weekday: String {
    case sunday
    case monday = "Mon"
    case tuesday
    case thursday
    case friday
    case saturday
}

Weekday.sunday.rawValue // 원시값이 없으면 케이스 이름과 똑같은 값이 원시값으로 저장됨
Weekday.monday.rawValue // 직접 저장한 원시값을 가져옴

enum ControlChar: Character {
    case tap = "\t" // Character 타입이라 하나의 값을 저장해야함
    case newLine = "\n"
}


