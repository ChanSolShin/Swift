import UIKit

struct/*class*/ Size {
    var width = 0.0
    var height = 0.0
    
    mutating func reset(value: Double) {
//        width = value
//        height = value
        self = Size(width: value, height: value) // 위 코드와 같이 사용 할 수 있음 (class에서 사용불가. 값형식에서만 사용가능)
    }
    
//    func calcArea() -> Double {
//        return width * height // self 생략
//    }
//    
//    var area: Double{
//        return calcArea() // self 생략
//    }
//    
//    func update(width: Double, height: Double) {
//        self.width = width // 파라미터 이름이 같아서 self 생략 불가능
//        self.height = height
//    }
//    
//    func doSonthing() {
//        let c = { self.width * self.height } // 클로저 안에 있으므로 self 생락 불가능
//    }
//    
//    static let unit = ""
//    
//    static func doSomthing() {
//        //self.height 형식 메소드에서 인스턴트 메소드를 직접 접근하는거는 불가능함.
//        unit // self 생략가능. 타입 멤버(static)
//    }
}


