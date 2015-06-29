//: [Previous](@previous)

//: # A way around
//: There are ways around not being able to include generic types (after the where keyword) that are not classes or protocols:
protocol StringType {
    var characters: String.CharacterView { get }
}

extension String:StringType {
}

extension Array where T:StringType {
    func countArray() -> [Int] {
        return self.map{$0.characters.count}
    }
}

["one","two","three"].countArray()  // an array of string lengths
//: And inspired by Erica Sadun's conundrum (originating from Mike Ash) we could add a further method to the above extension:
extension Array where T:StringType {func appendAll() -> String  {
        return String(self.map{$0.characters}.reduce(String.CharacterView(), combine: {$0 + $1}))
    }
}
//: This method takes an array of strings and reduces the array to a single string.
["one","two","three"].appendAll()  // Hello Swift!
//: We could go further and add a method to this extension that joins all strings using another string:
extension Array where T:StringType {
    func joinAll(str:String) -> String {
        return String(str.characters.join(self.map{$0.characters}))
    }
}
["one","two","three"].joinAll(" ")  // "one two three"
//: The possibilities that open up when the restrictions are circumvented appear encouraging, but the restrictions themselves, of not being able to use struct (and enum) types directly, might well be temporary (and be resolved in a future Xcode 7 beta), so I wouldn't try too hard to circumvent them.
//:
//: Especially in this particular case where there are other options readily available that are just as efficient:
", ".join(["one","two","three"])  // "one, two, three"
"".join(["one","two","three"])  // "onetwothree"

["one","two","three"].reduce("",combine:{$0 + $1}) // "onetwothree"

//: [Next](@next)
