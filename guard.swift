import UIKit

func validate(id: String){
    guard id.count >= 6 else { //조건 안에서 거짓일 떄의 실행되는 코드가 반드시 있어야함
        return // 거짓일때의 코드
    }
    print("OK")
}

func validateUsingIf(id: String){
    if id.count >= 6 {
        if id.count <= 20{
            print("OK")
        }
    }
}


validate(id: "short")

validate(id: "sdskjdfndslfj")
