import UIKit

struct First {
    let a: Int
    let b: Int
    let c: Int
}

let f = First(a: 1, b: 2, c: 3)

struct Second {
    let a: Int = 0 // 상수라 변경 불가능
    let b: Int = 1
    let c: Int
}

let s = Second(c: 3) // a,b 가 선언과 동시에 초기화 되어 있어서 초기화가 필요한 c만 파라미터로 받음

struct Third {
    var a: Int = 0
    var b: Int = 1
    var c: Int
}

extension Third { // MemberInitializer 을 사용 하려면 extension에서 필요한 생성자를 구현.
    init(Value: Int){ // 구조체에서 생성자를 직접 구현하면 멤버Initializer는 구현하지 않음.
        a = Value
        b = Value
        c = Value
    }
}
let t = Third(a: 1,b: 2, c: 3) // 변수라 모두 초기화 가능
