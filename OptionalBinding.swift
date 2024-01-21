import UIKit
// 옵셔널의 값이 존재하는지를 검사한 뒤, 존재한다면 그 값을 다른 변수에 대입 (추출)
var num: Int? = 123

if let n = num { // n은 옵셔널 값이 아님. num의 값이 존재 하므로 n의 num값 대입. 대입하는 편이 오류가 적고 안정적임.
    print(n) // (명시적해제 - 비강제해제
}

if num != nil { // 옵셔널 값 추출. 옵셔널의 값이 존재하면 강제로 추출 (명시적해제 - 강제해제)
    print(num!)
}

var str: String? = "Swift"
guard let str else {
    print(str!)
    fatalError() // gaurd 리턴문
}

let a: Int? = 12
let b: String? = "str"

if let a, let b, b.count < 5 { // b의 글자수가 5보다 작으면 a,b 출력
    print(a,b)
}

if let a, b!.count < 5{ // a는 새로 선언되어 옵셔널 값이 아니지만 b는 옵셔널이기 때문에 추출 할 때 !를 붙여서 강제로 추출해서 비교.
    print(a,b) // b를 새로운 상수로 선언하면 b의 길이를 비교하는 구문에서의 b에서 !를 안붙여도 됨
}

if let b, a! > 3, b.count < 5 { // 비교 구문이 아니면 무조건 새로 상수 선언
    print(a,b) //새로 선언하지 않고 비교연산에서 강제 추출 할 경우 업래핑된 상태라 출력값이 래핑된 상태로 출력이 됨.
}

if let aNum = a , let bNum = b , bNum.count < 5 { // 값을 대입해서 하는것이 가장 안정적임
    print(aNum,bNum)
}

if let aNum = a , let bNum = b , b!.count < 5 { // 비교연산에 한하여 b를 강제 추출 할 수 있음
    print(aNum,bNum)
}

print(a!, b!) // 이렇게 바로 강제 추출도 가능함.

if let a, let b { //새로 선언해주면 강제 추출 하지 않아도 사용가능
    print(a,b)
}

if a == 12 { // 비교연산자를 통한 옵셔널값의 묵시적해제. 하지만 출력이나 연산에서는 해제가 되지 않음
    print("a = 12")
    print(a!+1) // 이렇게 !를 붙여야 연산가능
}

let a1: Int! = 12
print(a1+1) // 연산할때나 비교할때 묵시적 해제가 되어 사용가능
