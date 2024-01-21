import UIKit

let num = 1

switch num {
case 1:
    print("one")
case 2, 3: // 두가지의 경우를 한번에 사용 가능
    print("two or three")
default:
    break
}

let temperature = Int.random(in: -10 ... 30) // -10부터 30 까지의 랜덤 숫자를 저장

switch temperature {
case ...10: // 범위로도 지정 가능
    print("cold")
case 11...20:
    print("cool")
case 21...27:
    print("warm")
case 28...:
    print("hot")
default:
    break
}

let attempts = 10

switch attempts{
case ...9:
    print("warning")
case 10:
    print("locked")
    fallthrough // 다음 케이스로 넘어가서 실행함
default:
    print("send warning email")
}
