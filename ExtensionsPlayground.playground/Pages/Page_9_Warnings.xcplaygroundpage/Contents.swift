//: [Previous](@previous)

//: # Warnings
//: While there is nothing to prevent you creating extensions like the following:
extension Array where T:CollectionType {
    func myMethod() {
        
    }
}

extension Array where T:ExtensibleCollectionType {
    func myMethod() {
        
    }
}
//: When you actually come to implement it, if the type internal to the array adopts both CollectionType and ExtensibleCollectionType protocols then it will raise an error and won't compile because it is unclear which myMethod() you wish to use.

//: Similarly, it would be almost pointless to write methods named the same that resided within a pair of extensions such as these:
extension Array where T:CollectionType {
}

extension Array where T:protocol<CollectionType, ExtensibleCollectionType> {
}

//: The only situation it wouldn't raise an error is if the type adopted ExtensibleCollectionType without adopting CollectionType.

//: [Next](@next)
