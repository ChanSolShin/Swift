import UIKit


class Sample {
    var data = 0
    static var sharedData = 123
    func doSomething() {
        print(data)
        
        Sample.sharedData // 인스턴트 멤버에서 타입멤버에 접근 할 때는 타입이름으로 접근해야함
    }
    
    func call() {
        doSomething() // 같은 인스턴트 멤버이기 때문에 self를 생략가능 (self.doSomething)
    }
}

let a = Sample()
a.data

a.doSomething() // 반드시 인스턴트 이름을 통해서 호출 해야함

a.call()


struct Size {
    var width = 0.0
    var height = 0.0
    
    mutating func enlarge() { // 가평식에서 속성을 바꾸는 메소드를 구현 할 때는 mutating으로 선언해야함(중요)
        width += 1.0
        height += 1.0
    }
}

var s = Size() // mutating 메소드를 호출 할때는 인스턴트 메소드를 변수로 선언해야함
s.enlarge()
