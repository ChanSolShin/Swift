import UIKit

    protocol Resettable {
 /*mutating 선언시*/       func reset() // 바디는 작성하지 않아도됨
    }
    
   /*struct*/ class Size: Resettable {
        var width = 0.0
        var height = 0.0
        //class면 mutating 안붙여도됨.
       //struct면 mutating 붙여야함.
        func reset() {
            width = 0.0
            height = 0.0
        }
    }
// static을 선언하면 메소드 앞에 static선언. 하지만 overriding 불가.
// 메소드앞에 static 대신 class로 선언하면 overriding 가능.

