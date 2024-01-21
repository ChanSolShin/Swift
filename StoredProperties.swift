import UIKit

struct Person {
    let name: String = "Chan Sol"
    var age: Int = 25
}

var p = Person()
p.name
p.age

p.age = 30 // 구조체의 가변성은 속성의 가변성에 영향을 줌

struct Image {
    init() {
        print("new image")
    }
}

struct BlogPost {
    let title: String = "Title"
    let content: String = "Content"
    lazy var attachment: Image = Image() // 지연저장. 이 속성은 초기화가 되지 않음. 생성자에서 실행 및 초기화가 되지않음.
    
    let date: Date = Date()
    
    // 위 Date속성이 초기화되어서 formattedDate속성은 초기화 될수 없음. 따라서 lazy를 사용해서 지연 시켜야함
    lazy var formattedDate: String = {
       let f = DateFormatter()
        f.dateStyle = .long
        f.timeStyle = .medium
        return f.string(from: date)
    }()
}

var post = BlogPost() // 구조체에서 지연저장 속성을 사용하려면, 반드시 변수에 저장해야함.
post.attachment


