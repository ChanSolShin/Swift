import UIKit

let bigA = "Apple"
let smallA = "apple"
let b = "Banana"

bigA == smallA // 문자열은 대소문자를 구분함
bigA != smallA

bigA < smallA // 아스키 코드값을로 비교함
("A" as Character).asciiValue
("a" as Character).asciiValue

bigA < b
smallA < b // 문자열 첫번째 문자 부터 비교. 같으면 다음 문자의 아스키값 비교

bigA.compare(smallA) == .orderedSame // 문자열이 같은지 비교하는 함수
bigA.caseInsensitiveCompare(smallA) == .orderedSame // 대소문자를 구분하지 않고 비교하는 함수

bigA.compare(smallA, options: [.caseInsensitive]) == .orderedSame // 대소문자를 구분하지 않고 비교하는 함수


let str = "Hello, Swift"

str.contains("swift") // 문자열이 포함되어있는지 확인하는 함수
str.lowercased().contains("swift") // 대소문자 구분하지 않고 문자열의 포함을 확인

str.range(of: "swift", options:[.caseInsensitive]) // swift의 범위를 리턴

let str2 = "Hello, Programming"
let str3 = str2.lowercased()

var common = str.commonPrefix(with: str2) // 서로 중복되어 포함되어있는 문자열을 추출
common = str.commonPrefix(with: str3) // 첫번째 문자의 대소문자가 달라서 공통된 문자열이 없다고 판단.
common = str.commonPrefix(with: str3, options: [.caseInsensitive]) // 대소문자를 구분하지 않고 원본에서 공통된 문자열을 탐색.





