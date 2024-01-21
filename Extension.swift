import UIKit

struct Size {
    var width = 0.0
    var height = 0.0
}

extension Size { // extention으로 구조체 속성에 area 추가.(기존 타입(struct)에 기능을 추가)
    var area: Double {
        return width * height
    }
}

extension Size: Equatable { // 프로토콜 구조를 추가 할 수 있음. Size연산자를 비교연산자로 비교할 수 있음.
    public static func == (lhs: Size, rhs: Size) -> Bool {
        return lhs.width == rhs.width && lhs.height == rhs.height
    }
}

let s = Size()
s.width
s.height
s.area


