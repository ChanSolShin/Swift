import UIKit

let num = 2

switch num {
case 1...10:
    print("begin block")
    if !num.isMultiple(of: 2){ // num이 짝수가 아닐때
        break
    }
    print("end block") // 짝수면 출력되고 switch문 종료
default:
    break
}

print("Done")

for index in 1...10{
    print(index)
    if index > 1{
        break
    }
}

for i in 1...10 {
    print("OUTER LOOP", i)
    
    for j in 1...10 {
        print("inner loop", j)
        
        if j > 1 { // inerloop는 두번씩만 반복
            break
        }
    }
}
