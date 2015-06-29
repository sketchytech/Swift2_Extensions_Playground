//: Playground - noun: a place where people can play

import UIKit

//:  #  Extensions Playground

//: ## Type extensions with generic type parameters
//:Extensions are a convenient way of separating code, extending pre-existing types and adopting new protocols in Swift. But with the arrival of Swift 2 they've taken on a whole new set of powers.

//: # First up
//: Consider this extension:
extension Array where T:UIView {
    var backgroundColors:[UIColor] {
        return self.filter{$0.backgroundColor != nil}.map{$0.backgroundColor!}
    }
}
//: It extends arrays with a type of UIView to add a computed variable that is capable of returning all the colours used inside an array of views.
let aV = UIView()
aV.backgroundColor = UIColor.blueColor()
let aV2 = UIView()
aV2.backgroundColor = UIColor.greenColor()
let aT = UITextView()
aT.backgroundColor = UIColor.yellowColor()

[aV,aV2,UIView(),aT].backgroundColors

//: [Next](@next)
