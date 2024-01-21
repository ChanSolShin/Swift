import UIKit

class Size {
    var width = 0.0
    var height = 0.0
}

class Position {
    var x = 0.0
    var y = 0.0
}

class Rect {
    var origin = Position() // Rect가 소멸하는 시점에 Rect인스턴스에 저장되어 있던 인스턴스도 소멸됨.(변수 origin, size 소멸)
    var size = Size()
    
    deinit {
        print("deinit \(self)")
    }
}

var r: Rect? = Rect()
r = nil // 변수에 nil을 저장하는 코드를 실행하면 소멸자가 호출 됨.
