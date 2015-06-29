//: [Previous](@previous)

//: # Creating order
//: There are many useful extensions that can be thought of:
extension Dictionary where Value:Comparable {
    var valuesOrdered:[Value] {
        return self.values.sort()
    }
}

extension Dictionary where Key:Comparable {
    var keysOrdered:[Key] {
        return self.keys.sort()
    }
}

["two":"monkey","one":"cat","three":"hamster"].keysOrdered  // ["one", "three", "two"]
["two":"monkey","one":"cat","three":"hamster"].valuesOrdered  // ["cat", "hamster", "monkey"]
//: In this example an ordered array of keys and values can be extracted from a Dictionary instance, as long as the inner types adopt the Comparable protocol.

//: [Next](@next)
