import UIKit

class Position {
    var x: Double
    var y: Double
    
    init(x: Double, y: Double) { // Degignated Initializer. 모든 속성을 초기화. 필수
        self.x = x
        self.y = y
    }
    
    convenience init(x: Double) { // Convenience Initializer. 초기화 하고 싶은 속성만 초기화. 필수X
        self.init(x: x, y: 0.0)
    }
}

class Figure {
    var name: String
    
   /*required*/ init(name: String) {
        self.name = name
    }
    
    func draw() {
        print("draw \(name)")
    }
    
    convenience init() {
        self.init(name: "Unknown")
    }
}

class Rectangle: Figure { // 상속된 생성자가 일부 속성만 초기화해서 오류.
    var width: Double // = 12
    var height: Double// = 34 // 이렇게 생성자에서 초기화되지 않은 속성들도 초기화 해줘야함.
    
    init(name: String, width: Double, height: Double) {
        self.width = width
        self.height = height
        super.init(name: name) // 수퍼 클래스에 있는 생성자에서 초기화하는 속성이 있으면 수퍼 클래스의 생성자로 넘겨야함.
    }
    
    override init(name: String) {
        self.width = 0
        self.height = 0
        super.init(name: name)
    }
}

class Rectangle2: Figure { // Required Initializer
    var width: Double = 12
    var height: Double = 34
    init() {
        width = 0.0
        height = 0.0
        super.init(name: "unknown")
    }
    
 //   required init(name: String) { 수퍼클래스의 생성자와 똑같은 형태로 구현. 수퍼클래스 생성자 선언할 때 required를 앞에 붙임
//        width = 0.0
//        height = 0.0
//        super.init(name: "name")
//    } // 서브 클래스를 상속한 다른 클래스들이 다시 이 메소드(상속자)를 구현하도록 강제함.
}


