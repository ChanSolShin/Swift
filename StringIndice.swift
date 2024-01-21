import UIKit

let str = "Swift"
str.startIndex // 첫번째 인덱스

let firstCh = str[str.startIndex]
print(firstCh)

let lastCharinDex = str.index(before: str.endIndex) // 문자열의 마지막은 nil이므로 마지막의 이전값을 추출
let lastch = str[lastCharinDex]
print(lastch)

let seconcharIndex = str.index(after: str.startIndex)
let secondCh = str[seconcharIndex]
print(secondCh)

var thirdCharIndex = str.index(str.startIndex, offsetBy: 2) // 문자열의 3번째 인덱스 추출. 첫번째인덱스에서 두번째. (1+2)번째
var thirdCh = str[thirdCharIndex] // index함수를 이용해서 문자열의 인덱스를 자유롭게 추출가능.
print(thirdCh)


 thirdCharIndex = str.index(str.endIndex, offsetBy: -3) // 문자열의 3번째 인덱스 추출. 마지막 인덱스에서 3번째 이전. (6-3)번째
 thirdCh = str[thirdCharIndex]
print(thirdCh)

if thirdCharIndex < str.endIndex && thirdCharIndex >= str.startIndex{
    
} // swift는 유니코드 문자를 처리할때 내부 할당값이 아니라 사람이 인식하는 문자로 처리해서 StringIndex 사용
