import UIKit

protocol Figure {
   static var name: String {get set}
}

struct Rectangle: Figure {
  static  /*let //읽기전용만 있으면 let사용 가능*/ var name = "Rect" // 읽기만 가능하게 선언
}

struct Triangle: Figure {
 static   var name = "Triangle" // 읽기 쓰기 모두 있어서 변수로 선언해야함
}

class Circle: Figure {
 static   var name: String {
        get{
            return "Circle"
        }
     set { // 쓰기도 추가해야함
         
     }
    }
}
