import UIKit

for num in 1 ... 10{
    print(num)
}

for num in (1...10).reversed(){ // 내림차순으로 하려면 reversed() 함수를 사용해야함
    print(num)
}

for num in 1 ..< 10{ // 10은 출력하지 않고 10 미만까지 출력
    print(num)
}

let range = ...5 // First_class_Citizen

