import UIKit

for index in 1...10 {
    print("hello \(index)") // ""안에서 변수값을 출력하기 위한 방법 : \()
}

for _ in 1...10 { // 언더스코어로 문자 생략. 가독성이 좋아짐 (와일드카드 패턴)
    print("hi")
}

let power = 10
var result = 1
for _ in 1...power{
    result *= 2
}

for num in stride(from: 0, through: 10, by: 2){ // 0 부터 10 까지 2씩 증가
    print(num)
}
print("\n")
var sum = 0

for num in 1...10 {
    sum += num
}
print(sum)
    sum = 0
for num in stride(from: 1, to: 11, by: 1){ // 0..<11 과 같음
    print(num)
    sum+=num
}
print(sum)


for i in 2...9{
    for j in 1...9{
        print("\(i)*\(j)=\(i*j)")
    }
    print("\t")
}
