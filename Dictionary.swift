import UIKit

var dict = ["A": "Apple", "B": "Banana"]
dict = [:] // 딕셔너리가 공백 상태

let dict1: Dictionary<String,Int> // 정식문법
let dict2: [String: Int] // 단축문법

//빈 딕셔너리
dict = [:]
dict = [String: String]() // 문자열 타입의 딕셔너리
dict = Dictionary<String, String>() // 문자열 타입의 딕셔너리. 위 코드와 같은 의미

let words = ["A": "Apple", "B": "Banana", "C": "City"]

words.count // 딕셔너리 원소의 수
words.isEmpty

words["A"] // 키를 부르면 값을 리턴함
words["Apple"] // Apple 라는 키가 없어서 nil을 리턴함.

let a = words["E"] // E라는 키가 없어서 nil을 리턴
let b = words["E",default: "Empty"] // E라는 키가 없으면 기본값을 리턴

for k in words.keys { // 딕셔너리는 정렬되어있지 않음
    print(k) // 매번 다른값이 출력됨
}

for v in words.values { // 값도 정렬되어있지 않음
    print(v)
}

for k in words.keys.sorted(){ // 정렬하려면 sorted 함수를 사용해야함
    print(k)
}

let keys = Array(words.keys) // 키 값을 배열로 저장
let values = Array(words.values) // 밸류값을 배열로 저장

var mutableDict = [String: String] ()

mutableDict["A"] = "Apple" // 키가 없으면 새로운 요소로 저장
mutableDict["B"] = "Banana"

mutableDict.count
mutableDict

mutableDict["B"] = "Ball" // 키가 있으면 그 키에 새로운 값을 저장
mutableDict

mutableDict.updateValue("City", forKey: "C") // C라는 키와 같이 추가
mutableDict.updateValue("Circle", forKey: "C")
mutableDict

mutableDict["B"] = nil // B라는 키와 그 값을 삭제
mutableDict

mutableDict["Z"] = nil // 키가 없으면 동작 되지 않음
mutableDict.removeValue(forKey: "A") // A키를 삭제
mutableDict.removeValue(forKey: "A") // 키가 없으면 동작 되지 않음

mutableDict.removeAll() // 모두 삭제

let first = ["A": "Apple", "B"/*"b"*/: "Banana", "C": "City"]
let second = ["A": "Apple", "C": "City", "B": "Banana"]

first == second // false. 키의 대소문자를 구분하므로 false. 딕셔너리의 순서는 상관없음.
first != second // ture

let find: ((key: String, value: String)) -> Bool = { // 딕셔너리가 존재하는지 확인
    $0.key == "B" || $0.value.contains("i")
}

first.contains(where: find)

first.first(where: find) // 가장 처음 찾은 딕셔너리를 찾음. 순서가 따로없기 때문에 순서가 매번 달라질 수 있음
first.filter(find) // 검색된 모든 메소드를 새로운 딕셔너리로 리턴. 항상 같은 요소가 포함되어 있음.

