import UIKit

class Figure {
    var name = "Unknown"
    init(name: String) {
        self.name = name
    }
    
    func draw() {
        print("draw \(name)")
    }
}

class Circle: Figure {
    var radius = 0.0
}

let c = Circle(name: "Circle") // 상속받은 sub 클래스 이기 때문에 super 클래스의 name 사용가능
c.radius

c.name
c.draw()

let a = Figure(name: "Figure")
a.name // super 클래스의 값은 변함
c.name // super클래스에서 상속받은 super클래스의 값은 변하지 않음
c.draw()

 class Rectangle: Figure { // Rectangle 클래스는 Figure 클래스를 상속
    var width = 0.0
    var height = 0.0
}

final class Impossible: Figure { // Figure 클래스를 상속 받았지만 다른 클래스를 상속하는것은 불가능 (Final)
    
}

class Square: Rectangle { // Square 클래스는 Figure 클래스를 상속받은 Rectangle 클래스를 상속
}

