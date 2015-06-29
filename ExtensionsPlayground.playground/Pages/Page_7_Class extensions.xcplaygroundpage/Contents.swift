//: Playground - noun: a place where people can play

//: # Class extensions
//: The extensions of generic types includes generic Class instances:
class GSuper<T> {
    
}

extension GSuper where T:IntegerType {
    func num() -> T {
        return 2
    }
}

class GSub:GSuper<Int> {
    func number() -> Int {
        return 4
    }
}

GSuper<Int>().num() // 2

GSub().num() // 2
GSub().number() // 4

//: And we see above how this plays out when subclassing is added to the mix.
