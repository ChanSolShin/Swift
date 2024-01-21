import UIKit

struct SPerson { // 구조체
    var name: String // 값을 저장하지 않아도 됨.
    var age: Int
    
    func speak(){
        print("Hello")
    }
}

let s = SPerson(name: "Steve", age: 50)

let name = "Pual" // 오류가 나지 않음. 접근방식이 다름. 구조체의 name이 아님.

s.name
s.age

s.speak()

class CPerson { // 값을 먼저 저장해 주어야함
    var name: String = "Steve"
    var age: Int = 50
    func speak() {
        print("Hello")
    }
}

let c = CPerson()
c.name
c.age
