import UIKit

func sayHello(name: String){
    print("Hello, \(name)")
}

sayHello(name: "Swift")

func sayHello(to name: String){// to가 ArgumentLabel 이됨.
    print("Hello, \(name)")
}

sayHello(to: "Swift") // 파라미터 이름이 아닌 아규먼트 레이블 이름인 to를 사용.

func sayHello(_ name: String){// 아규먼트 레이블 생략
    print("Hello, \(name)")
}

sayHello("Swift") // 아규먼트 레이블을 생략했기 때문에 파라미터 이름을 사용하지 않아도 됨.
