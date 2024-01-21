import UIKit

struct PositionValue { // 값형식
    var x = 0.0
    var y = 0.0
}

class  PositionObject { // 참조형식
    var x = 0.0
    var y = 0.0
}

var v = PositionValue()
v.x
v.y

var o = PositionObject()
o.x
o.y

var v2 = v
v2.x
v2.y

var o2 = o
o2.x
o2.y

v2.x = 12 // v2는 바뀌지만 v는 바뀌지 않음. (v2는 복사본)
v2.y = 34

v.x
v.y

v2.x
v2.y

o2.x = 12 // o2도 바뀌고 o도 바꿈. 새로운 복사본을 만들지 않고 원본을 그대로 전달함. 참조를 전달함(o의 메모리 주소 전달)
o2.y = 34

o.x
o.y
o2.x
o2.y
