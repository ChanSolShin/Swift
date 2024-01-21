import UIKit

protocol Figure {
    var name: String {get}
    init(n: String)
}

struct Rectangle: Figure {
    var name: String
    init(n: String) {
        name = n
    }
}

class Circle: Figure {
    var name: String
    required init(n: String) {// 클래스는 상속을 고려해야해서 requried추가 (필수생성자로 선언)
        name = n
    }
}

final class Triangle: Figure { // final class로 선언함으로 더 이상의 상속은 없다는 뜻이므로 required(필수생성자)를 추가하지 않아도됨.
    var name: String
    init(n: String) {
        name = n
    }
}
class Oval: Circle {
    var prop: Int
    
    init() { // 프로토콜에 있는 생성자와 파라미터가 다름. 이때는 프로토콜에 있는 동일한 생성자를 직접 구현해야함.
        prop = 0
        super.init(n: "Oval")
    }
    
    required convenience init(n: String) { // 간편생성자로 요구사항(프로토콜에 있는 생성자) 충족
        self.init()
    }
}

protocol Grayscale {
    init?(white: Double) // ?일때, 아무것도 없을때,
}

struct Color: Grayscale {
    init!(white: Double){ // ? ! 가능, !가능
        
    }
}
