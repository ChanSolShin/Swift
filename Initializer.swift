import UIKit

class Position {
    var x: Double
    var y: Double
    // var z = 0.0 // 잘 사용하지 않음
    init() { // 파라미터가 없는 생성자
        x = 0.0
        y = 0.0
    }
    
    init(value: Double) { // 파라미터가 있는 생성자
        x = value
        y = value
    }
}

let a = Position() // 파라미터가 없는 생성자 호출
a.x
a.y

let b = Position(value: 100) // 파라미터가 있는 생성자 호출
b.x
b.y

class SizeObj {
    var width = 0.0
    var height = 0.0
    
    init(width: Double, height: Double) {
        self.width = width // self 사용
        self.height = height
    }
   convenience init(value: Double) { // 간편생성자
//        width = value
//        height = value
        self.init(width: value, height: value)
    }
}

struct SizeValue {
    var width = 0.0
    var height = 0.0
}

let s = SizeValue()
SizeValue(width: 0.0, height: 0.0) // 구조체의 특별한 Initializer

