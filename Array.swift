import UIKit

let nums = [1, 2, 3]
let multi = [[1, 2, 3],[4, 5, 6]]

let strArray: Array<String>
let strArray2: [String]

// 비어있는 배열 선언
let emptyArray: [Int] = []
let emptyArray2 = Array<Int>()
let emptyArray3 = [Int]()

let zeroArray = [Int](repeating: 0, count: 10) // 같은 값을 배열에 넣을때 사용

nums.count // 배열의 인덱스 수
nums.count == 0 // 배열이 비어있는지 비교
nums.isEmpty // 배열이 비어있는지 검사하는 함수

let fruits = ["Apple", "Banana", "Melon"]
fruits[0] // 첫번째 요소의 문자열을 가져옴

fruits[fruits.startIndex] // 첫번째
fruits[fruits.index(before: fruits.endIndex)] // 마지막

fruits.first // 첫번째. 안전하게 접근 가능함
fruits.last // 마지막. 안전하게 접근 가능함

let list = ["A", "B", "C", "D", "E"]
list[0...2] // 첫번째부터 3번째까지
list[2...] // 3번째부터 마지막까지

list.prefix(3) //3번째까지 리턴
list.prefix(upTo: 3) // 3번째까지
list.prefix(through: 3) // array[3] 까지

let r = list.prefix {$0 != "C"} // 앞에서부터 C가 나올때까지 리턴

list.suffix(3) // 뒤에서 3개까지 리턴
list.suffix(from: 3) // 뒤에서 array[3] 까지 리턴

var alphabet = ["A", "B", "C"]
alphabet.append("E") // 배열 뒤에 새로운 원소추가
alphabet.append(contentsOf: ["F","G"]) // 여러개를 동시에 추가
alphabet.insert("D", at: 3) // alphabet[3] 위치에 D 추가
alphabet.insert(contentsOf: ["a", "b", "c"], at: 0) // alphabet[0]에 원소 여러개 동시추가
alphabet.remove(at: 0) // 0번째 삭제
alphabet.removeLast() // 마지막 삭제
alphabet.removeFirst() // 첫번째 삭제
alphabet
let l = alphabet.popLast() // 마지막 삭제 후 삭제한 값 리턴
print(l!) // 옵셔널로 되어있어서 언래핑 해줌
let f = alphabet.dropFirst() // 첫번째 삭제 후 삭제된 배열 리턴
print(f)
let ld = alphabet.dropLast()

let dropw = alphabet.drop(while: { $0 != "C" })
// 배열을 탐색하면서 C가 나올때까지 탐색하면서 C가 아닐때는 드랍하고 C가 나오면 남은 배열 리턴

alphabet.removeSubrange(0...2) // 범위 삭제

print(alphabet) // 출력방식
print(Array(alphabet)) // 타입을 명시한 출력방식
alphabet.removeAll() // 모두 삭제

let a = ["A", "B", "C"]
let b = ["a", "b", "c"]


// 배열의 비교
a == b // 대소문자를 구분함
a != b

a.elementsEqual(b) // 배열이 같은지 비교하는 메소드

//대소문자를 무시하고 같은지 비교
a.elementsEqual(b, by: {(lhs, rhs) -> Bool in return lhs.caseInsensitiveCompare(rhs) == .orderedSame})

// 원소 검색
let randomNumber = [1, 2, 3, 1, 4, 5, 2, 6, 7, 5, 0]

randomNumber.min() // 가장 작은수를 찾는 메소드

a.min() // 아스키 코드가 가장 작은 원소를 찾음
randomNumber.max()

randomNumber.contains(1) // 해당값이 존재하는지 확인하는 메소드
let r3 = randomNumber.contains {$0.isMultiple(of: 2)} // 짝수가 포함되어있는지 확인

randomNumber.first // 첫번째 탐색

randomNumber.first {$0.isMultiple(of: 2)} // 가장먼저 탐색된 짝수

randomNumber.firstIndex { $0.isMultiple(of: 2)} // 가장 먼저 탐색된 짝수의 인덱스가 몇번째인지 탐색

randomNumber.firstIndex(of: 5) // 첫번째로 검색된 5의 인덱스가 몇번째인지 탐색

randomNumber.lastIndex(of: 5) // 뒤에서부터 검색했을때 첫번째로 검색된 5의 인덱스가 몇번째인지 탐색

//배열의 정렬

randomNumber.sorted() // 오름차순으로 정렬. 하지만 원본은 바뀌지 않음
let sortedNum = randomNumber.sorted() // 뒤에 ed가 붙어서 원본이 바뀌지 않음.

let sorted = randomNumber.sorted { $0 > $1 } // 내림차순으로 정렬

[Int](randomNumber.sorted().reversed()) // 내림차순으로 정렬. 생성자로 전달함.

var mutableNums = randomNumber // 원본을 바꾸는 정렬은 let으로 못하므로 var로 선언된 배열을 사용해야함

mutableNums.sort() // 원본을 정렬하는 메소드
mutableNums.reverse() // 원본을 뒤집는 메소드

mutableNums.swapAt(0, 1) // 0번 인덱스와 1번 인덱스의 자리를 바꿔주는 메소드
mutableNums.shuffle() // 원본 배열의 순서를 셔플해주는 메소드
randomNumber.shuffled() // 원본 배열의 변화없이 순서를 셔플해주는 메소드
