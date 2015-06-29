//: [Previous](@previous)

//: # Rules of the game
//: The current rules of extending a generic type in this way is that the type being referenced after the **where** keyword must be a class or a protocol.
extension Array where T:IntegerType {
    func highestNOTValue() -> T? {
        return self.map{return ~$0}.sort().last
    }
    func lowestNOTValue() -> T? {
        return self.map{return ~$0}.sort().reverse().last
    }
    var NOTValues:[T] {
        return self.map{return ~$0}
    }
}
let bA:[UInt8] = [45,65,45,57]
bA.highestNOTValue() // 210
bA.lowestNOTValue() // 190
bA.NOTValues // [210, 190, 210, 198]
//: So what we've written here is acceptable but had we specified Int rather than IntegerType it would not be. 

//: [Next](@next)
