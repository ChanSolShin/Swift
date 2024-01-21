import UIKit

let a = 12
let b = 34

// !a // 오류. boolean 타입이 아니기 때문

!true
!false

a < b
// !a < b // 오류. a는 boolean 표현식이 아니기 때문
!(a < b)

a>10 && b > 10

true && true
false && false
true && false
false && true


true || true
false || false
true || false
false || true
