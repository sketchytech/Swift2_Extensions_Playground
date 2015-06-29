//: [Previous](@previous)

//: # Going even further with protocols
//: We can go even further and employ the Self keyword to help distinguish types that adopt a first protocol in addition to subsequent ones.
protocol FirstProtocol {
    
}

protocol SecondProtocol {
    
}

extension FirstProtocol where Self:SecondProtocol {
    func someMethod() -> String {
        return "Hello Swift!"
    }
}

struct FirstStruct:FirstProtocol {
    
}

struct SecondStruct:FirstProtocol,SecondProtocol {
    
}

SecondStruct().someMethod()  // while a SecondStruct instance can access the extension method
FirstStruct()  // FirstStruct cannot because it only adopts FirstProtocol
//: You'll notice here that because FirstStruct only adopts FirstProtocol it is excluded from the refined requirements of the extension. (Thanks here to Erik Kerber's flying birds example on the Ray Wenderlich site for identifying this.)

//: [Next](@next)
