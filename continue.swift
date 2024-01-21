import UIKit

for index in 1...10{
    if index.isMultiple(of: 2){ // index가 짝수일때는 출력하지 않고 다음회차로 넘어간 후 반복
        continue
    }
    
    print(index)
}

for i in 1...10 {
    print("OUTER LOOP", i)
    for j in 1...10{
        if j.isMultiple(of: 2){
            continue
        }
        print("inner loop", j)
    }
    
}
