import UIKit

let stock: Int? = nil // 값이 없음.(NULL과 비슷함) 타입을 항상 명시적으로 표시해야함
print(stock)

let str: String? = nil

let optionalStr: String? // ?만 붙여도 옵셔널을 선언할 수 있음

let a:Int? = nil
let b = a
b

let c: Optional<Int> = nil

var num: Int?
print(num)

num = 123
print(num) // wrapping 되어 있어서 값을 넣어도 전달되지 않음
print(num!) // 강제로 값을 추출. (Unwrapping)

let n = 123
print(n)

num = 123
let before = num

let after = num!
