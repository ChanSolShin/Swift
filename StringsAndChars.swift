import UIKit

let s = "Hello world"
let lorenIPut = "elwdjwelkdwe lknwekjdnekwdnkwedjnewkjndekwj ndkewjnkejwnckdjsnckjdsncksndknkfnwekfj nwekjnfewnfkjenfkjewnfkjnfnefkewjfnwkefnkjwef nkjnfkj enfkjwenfkjnfjkewn fkjewnfkjw nfkwnfkfnkjnew"
print(lorenIPut)

let multiline = // 큰따옴표 3개는 multiline literal 이라서 줄 바꿈을 해줄수 있음
"""
dwdwdkjdnkjdlkwdlkdjl,
wlndnwkjndkwnjdknwdkw,
wendjkwendkjewndkjwend,
dnkwjndkwjdnekwjndwekjndjkwdn
""" // 닫는 따옴표가 문자열의 문장보다 앞이나 동일선상에 있어야함
print(multiline)

var nsstr: NSString = "str"
let swiftStr: String = nsstr as String //nsstring을  string에 저장하려면 표현해줘야함

var str = "Hello" // 연결하려면 let말고 var을 사용해야함
str.append("Swift") // str에 문장추가함수

let c: Character = " " // 빈 character type을 선언하려면 공백을 추가해줘야함

