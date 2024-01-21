wimport UIKit

// Adding Properties
extension Date { // 애플 플랫폼에 날짜를 처리하는 Date 타입에 속성 추가
    var year: Int { // 현재 년도를 리턴하는 속성
        let cal = Calendar.current
        return cal.component(.year, from: self)
    }
}

let today = Date.now
today.year

extension Double {
    var radianValue: Double {
        return (Double.pi * self / 180.0)
    }
    
    var degreeValue: Double {
        return self * 180.0 / Double.pi
    }
}

let dv = 45.0
dv.radianValue // 새로 만든 계산속성을 호출.

// Adding Methods

extension Double {
    func toFahrenheit() -> Double { // 섭씨를 화씨로 변환
        return self * 9 / 5 + 32
    }
    
    func toCelsius() -> Double { // 화씨를 섭씨로 변환
        return (self - 32) * 5 / 9
    }
    
    static func convertToFahrenheit(from celsius: Double) -> Double {
        return celsius.toFahrenheit()
    }
}

let c = 30.0
c.toFahrenheit()

Double.convertToFahrenheit(from: 30.0) // 타입 메소드

extension String { // 랜덤문자를 구현하는 메소드 추가
    static func random(length: Int, charactersIn chars: String = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890") -> String {
        var randomString = String()
        randomString.reserveCapacity(length)
        
        for _ in 0 ..< length { 
           guard let char = chars.randomElement()
            else {
               continue
           }
            randomString.append(char)
        }
        return randomString
    }
}

String.random(length: 5) // 5개로 이루어진 랜덤문자 출력
