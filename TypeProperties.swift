import UIKit

// 형식속성

class Math {
   static var pi = 3.14
}

var m = Math()
Math.pi // static(저장형식속성)으로 선언하면 타입의 이름으로 접근해야함. 지연속성이기때문에 처음 접근할때 초기화됨.


enum Weekday: Int {
    case sunday = 1, monday, tuesday, wednesday, thursday, friday, saturday
    
    static var today: Weekday { // 접근하면 리턴값이 today에 들어감.
        let cal = Calendar.current
        let today = Date() // 오늘의 날짜 저장
        let weekday = cal.component(.weekday, from: today) // 주에 몇번째 요일인지 저장
        return Weekday(rawValue: weekday)! // 오늘의 요일을 리턴
    }
}

Weekday.today // 접근코드. 이 코드가 없으면 위 열거형에서의 today는 초기화되지 않음.

