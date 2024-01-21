import UIKit

var str = "Hello, Objective-C"

if let range = str.range(of: "Objective-C") { // Objective-C 부분을 탐색
    str.replaceSubrange(range, with: "Swift") // 탐색한부분을 Swift로 변경
}

str

if let range = str.range(of: "Hello") { // str은 바뀌지 않음
    let s = str.replacingCharacters(in: range, with: "Hi")
    s
    str
}

var s = str.replacingOccurrences(of: "Swift", with: "Awesome Swift") // Swift부분을 변경. str의 값은 바뀌지 않음.
s
s = str.replacingOccurrences(of: "swift", with: "Awesome Swift") // 대소문자를 구분함
s

s = str.replacingOccurrences(of: "swift", with: "Awesome Swift", options: [.caseInsensitive])
// 대소문자를 무시하고 문자열을 비교하는 옵션을 추가해야함
s

str = "Hello, Awesome Swift!!!"

let lastCharIndex = str.index(before: str.endIndex) // 마지막 인덱스를추출

var removed = str.remove(at: lastCharIndex) // 추출한 인덱스를 삭제
removed
str

removed = str.removeFirst() // 첫번째 문자를 삭제하고 삭제한 문자를 리턴. str의 첫번째 삭제, removed = 삭제된문자

str.remove(at: str.startIndex)

str.removeFirst(2) // 앞에서 두번째까지 삭제
str

str.removeLast(2) // 뒤에서 두번째까지 삭제

if let range = str.range(of: "Awesome"){ // "Awesome 부분을 삭제
    str.removeSubrange(range)
    str
}

str.removeAll() // 문자 모두 삭제
str.removeAll(keepingCapacity: true) // 메모리 공간은 삭제하지 않음. 불필요한 메모리공간 오버헤드 방지

str = "Hello, Awesome Swift!!!"

var substr = str.dropLast() // 원본문자열에서 마지막 문자하나를 뺀 문자열을 리턴

substr = str.dropLast(3) // 마지막에서 3번째까지 뺀 문자열을 리턴

substr = str.dropFirst()
substr = str.dropFirst(7) // 첫번째에서 7번째까지 뺀 문자열을 리턴
