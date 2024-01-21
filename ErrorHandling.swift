import UIKit

enum DataParsingError: Error { // Error 프로토콜을 채용하면 Error 타입이됨.
    case invalidType
    case invalidField
    case missingRequiredField
}
// 에러를 던지고(throw) 전달받은 에러처리 코드에서 발생한 에러를 확인하고, 원하는 방식으로 처리

func parsing(data: [String: Any]) throws {
    guard let _ = data["name"] else {
        throw DataParsingError.missingRequiredField // throw문이 호출되면, 이 함수에서 나머지 코드는 호출하지 않음.
    }
    
    guard let _ = data["age"] as? Int else {
        throw DataParsingError.invalidType
    }
    
    //Parsing
}

try? parsing(data: [:])




