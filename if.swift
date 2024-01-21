import UIKit

let id = "root"
let password = "1234qwer"
if id == "root"{
    print("valid id")
}

if password == "1234qwer"{
    print("valid password")
}

if id == "root" && password == "1234qwer"{
    print("go to admin page")
}
          
if id == "root" && password == "1234qwer"{
        print("go to admin page")
}
else{
print("incorrect value")
}

let num = 123

if num >= 0{
    print("positive or zero")
     if num % 2 == 0  {
        print("positive even")
    }else if num % 2 == 1 {
        print("positive odd")
}
}else{
    print("negative")
}

if num > 100 {
    print("positive over 100")
}else if num > 10{
    print("positive over 10")
}else if num > 0{
    print("positive")
}
