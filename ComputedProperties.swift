import UIKit

class Person {
    var name: String
    var yearOfBirth: Int
    
    init(name: String, year: Int) {
        self.name = name
        self.yearOfBirth = year
    }
    
    var age: Int {
        get {
            let calendar = Calendar.current
            let now = Date()
            let year = calendar.component(.year, from: now)
            return year - yearOfBirth // 현재 연도에서 태어난 연도를 뺌
        }
        set {
            let calendar = Calendar.current
            let now = Date() // 현재 날짜 및 시간
            let year = calendar.component(.year, from: now) // 현재의 년도를 호출하는 메소드
            yearOfBirth = year - newValue // 현재 연도에서 나이를 뺌
        }
    }
}

let p = Person(name: "James", year: 2002) // get 블록이 실행.
p.age
p.yearOfBirth
// 이후에 age 값을 변경하면 set 블록이 실행되서 클래스 및 속성의 value 모두 변경
p.age = 50 // 현재 연도에서 age즉 현재 나이를 뺀값이 yearOfBirth에 들어감. set 블록 실행. (newVlaue 값을 넣어줌)
p.yearOfBirth

