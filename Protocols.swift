import UIKit


protocol Something {
    func doSomething()
}

struct Size: Something { // 프로토콜을 선언하면 프로토콜을 채용한다고 명시적으로 표시.
    func doSomething() { // 프로토콜에 있는 메소드를 구현해야함.
    }
}

protocol SomethingObject: AnyObject, Something { // Something 프로토콜을 채용하는 SomethiingObject 프로토콜
    
}

//struct Value: SomethingObject { // 클래스 전용 프로토콜이라 채용불가(Anyobject)
//
//}

class Object: SomethingObject { // Object 클래스가 SomethingObject 프로토콜을 채용하고, 요구사항을 충족
    // Something 프로토콜을 채용하는 SomethiingObject 프로토콜을 채용했으므로, Something 프로토콜의 메소드를 작성해야함.
    func doSomething() {
    }
}
