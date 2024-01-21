import UIKit

class Figure {
    var name = "Unknown"
    init(name: String) {
        self.name = name
    }
    
    /*final*/ func draw() { // 멤버를 final로 선언하면 오버라이딩이 금지되는거고 상속대상이 제외되는것은 아님
        print("draw \(name)")
    }
}

class Circle: Figure {
    var radius = 0.0 // 읽기 쓰기가 가능한 속성을 읽기 전용으로 오버라이드는 못함
    
    var diameter: Double { // 읽기 전용 속성
        return radius * 2
    }
    
    override func draw() { // override 키워드를 추가해서 super클래스의 멤버를 재정의
        super.draw() // super 클래스의 메소드를 실행
        print("🔴")
        super.draw()
    }
}

let c = Circle(name: "Circle")
c.draw() // 오버라이딩한 메소드를 호출. 상위 구현을 완전히 무시


final class Oval: Circle { // 읽기 쓰기가 가능한 속성을 읽기 전용으로 오버라이드
// override var radius = 0.0 속성은 이런 방식으로 오버라이딩 하면안됨. 계산속성이나 프로퍼티 옵저버를 추가하는 방식으로 오버라이드 해야함.
    
    // 읽기, 쓰기 -> 읽기(x), 읽기, 쓰기 -> 읽기, 쓰기(o)
    // 읽기 -> 읽기(x), 읽기 -> 읽기, 쓰기(o)
    
    override var radius: Double { // 계산속성. 읽기 쓰기가 가능한 속성은 읽기와 쓰기가 모두 가능해야함.(읽기전용으로 오버라이드 불가능)
        get{
        return super.radius // 읽기
    }
        set {
            super.radius = newValue // 쓰기
        }
    }
    
    //읽기 전용으로 선언한 속성을 읽기와 쓰기와 가능한 속성으로 오버라이딩 (계산속성으로 오버라이드 할 때만 가능
    override var diameter: Double {
        get {
            return super.diameter // 읽기. super을 self 바꾸면 안됨. 동일한 속성이 반복적으로 호출됨.
        }
        set {
            super.radius = newValue // 쓰기.
        }
    }
}

// 프로퍼티 옵저버 오버라이드
class Oval2: Circle {
    override var radius: Double {
        willSet {
            print(newValue)
        }
        didSet {
            print(oldValue)
        }
    }
    
//    override var diameter: Double {  읽기 전용 계산속성은 감시 할 수 없음. 값이 바뀌지 않는데 값이 바뀌는것을 감시할 수 없음.
//        willSet {
//            print(newValue)
//        }
//        didSet {
//            print(oldValue)
//        }
//    }
}

let o = Oval(name: "Oval")
o.radius
o.radius = 12
o.draw()

