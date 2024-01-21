import UIKit

enum DataParsingError: Error {
    case invalidType
    case invalidField
    case missingRequiredField(String)
}


func parsing(data: [String: Any]) throws {
    guard let _ = data["name"] else {
        throw DataParsingError.missingRequiredField("name")
    }
    
    guard let _ = data["age"] as? Int else {
        throw DataParsingError.invalidType
    }
    
    //Parsing
}

//try parsing(data: [:]) // 에러를 전달하는 코드를 사용할때 try를 사용. 글로벌 스코프에서는 거의 사용하지 않음.

func test() { //함수내에서 try를 사용하려면, do-catch를 필수적으로 사용해야함
    do {
        try parsing(data: ["name": ""])
    } catch DataParsingError.invalidType, DataParsingError.invalidField {
        // catch블록에 순서를 바꿔도 오류는 안남. 하지만 두번째 블록은 실행되지 않음.
        print("handle invalidType error")
    } catch { // 패턴을 생략한 catch블록은 마지막에 작성해야함.
        print("handle error")
        
        if let error = error as? DataParsingError { // 패턴이 없는 에러 처리하는 방법
            switch error {
            case .invalidType:
                print("invalidType")
            default:
                print("handle error")
            }
        }
    }
}

test()
