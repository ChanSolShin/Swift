import UIKit

class Circle {
    static let pi = 3.14
    var radius = 0.0
    
    func getArea() -> Double {
        return radius * radius * Circle.pi
    }
    
    
    // 타입에 속한 메소드. 인스턴스 메소드와 다르게 타입안에서만 존재하는 메소드(static)이기 때문에 타입이름으로만 호출 가능
    static func printPi() {
        print(pi)
    }
}

Circle.printPi() // 타입의 이름으로 호출

