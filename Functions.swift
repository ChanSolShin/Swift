import UIKit

func sayHello() {
    print("hello")
}

sayHello()

func add() -> Int{ // 리턴타입 명시
         return 1 + 2
}

print(add())

if add() == 3 {
    sayHello()
}

let r = add()
print(r)

func printRandomEvenNumber(){ //랜덤 값이 짝수일 때 출력
    let rnd = Int.random(in: 1...100)
    if !rnd.isMultiple(of: 2){
        return
    }
    print(rnd)
}

printRandomEvenNumber()
