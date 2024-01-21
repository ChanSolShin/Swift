import UIKit

func add(a:Int, b: Int) -> Int {
    return a + b
}


let result = add(a:3, b:4)
print(result)
print(add(a:3, b:4))

func sayHello(to: String = "Stranger"){ // 기본 파라미터를 지정가능.
    print("Hello, \(to)")
} // 파라미터의 자료형이 정해져서 함수의 자료형을 따로 표현하지 않아도 된다.
sayHello(to: "Swift") // 파라미터 전달
sayHello() // 파라미터를 전달 하지 않아서 기본값으로 출력
