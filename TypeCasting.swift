import UIKit

let num = 123
num is Int // 타입 체크는 런타임에 실행
num is Double
num is String

class Figure {
    let name: String
    init(name: String) {
        self.name = name
    }
    
    func draw() {
        print("draw \(name)")
    }
}
class Triangle: Figure {
    
}

class Rectangle: Figure {
   var width = 0.0
   var height = 0.0
    
    override func draw() {
        super.draw()
        print("⬛️ \(width) x \(height)")
    }
}
class Circle: Figure {
    var radius = 0.0
}
class Square: Rectangle {
    
}
let t = Triangle(name: "triangle")
let r = Rectangle(name: "Rectangle")
let s = Square(name: "Square")
let f = Figure(name: "Figure")
let c = Circle(name: "Circle")

r is Figure // Rectangle은 Figure을 상속받았기 때문에 true
s is Figure // Square은 Figure을 상속받은 Rectangle을 상속받았기 때문에 true
r is Square // false

var upcasted: Figure = s
upcasted = s as Figure // 이렇게 as를 사용해서 업캐스팅 할 수 있음

upcasted as? Square
upcasted as! Square
upcasted as? Rectangle
upcasted as! Rectangle

let list = [r, s, t, c] // 리스트의 타입은 가장 슈퍼타입인 Figure

for item in list {
    item.draw() // 다형성. 업캐스팅한 인스턴스를 통해서 메소드를 호출하더라도 실제 타입에서 오버라이딩한 메소드가 호출
    if let c = item as? Circle { // Circle로 다운캐스팅 한 뒤에 성공한 경우에만 실행 및 접근
        c.radius // radius 속성이 선언된 인스턴스를 접근해야만 radius 속성에 접근가능함.
    }
}


