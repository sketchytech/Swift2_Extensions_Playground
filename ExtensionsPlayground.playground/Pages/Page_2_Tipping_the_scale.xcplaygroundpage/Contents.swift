//: [Previous](@previous)

import UIKit
//: # Tipping the scale
//: A second example here enables an array of views to be scaled.
extension Array where T:UIView {
    func proportionalScale(scale:CGFloat) -> [UIView] {
        let aTran = CGAffineTransformMakeScale(scale, scale)
        return self.map{$0.transform = aTran; return $0}
    }
}
//: It can be implemented in the following way: 
let myView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
let myArray = [myView]
let myHalfArray = myArray.proportionalScale(0.5)
myHalfArray[0].frame
//: **Note**: x and y changes because layer is anchored at the centre, to adjust centre set i.layer.anchorPoint value or add a translation

//: [Next](@next)
