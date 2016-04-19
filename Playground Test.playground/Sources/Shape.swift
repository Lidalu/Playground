import Foundation
import UIKit

//: # Shape Type
public enum ShapeType {
    
    case Triangle
    case Square
    case Round
}

//: # Shape View
public class Shape: UIView {
    
    var type: ShapeType = .Triangle
    
    public init(frame: CGRect, type: ShapeType = .Triangle) {
        
        super.init(frame: frame)
        self.backgroundColor = UIColor.whiteColor()
        self.type = type
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public func drawRect(rect: CGRect) {
        
        let bezier: UIBezierPath = UIBezierPath()
        switch type {
        case .Triangle:
            
            bezier.moveToPoint(CGPoint(x: 0.0, y: 0.0))
            bezier.addLineToPoint(CGPoint(x: 100.0, y: 20.0))
            bezier.addLineToPoint(CGPoint(x: 30.0, y: 60.0))
        case .Square:
            
            bezier.moveToPoint(CGPoint(x: 10.0, y: 20.0))
            bezier.addLineToPoint(CGPoint(x: 90.0, y: 20.0))
            bezier.addLineToPoint(CGPoint(x: 90.0, y: 80.0))
            bezier.addLineToPoint(CGPoint(x: 10.0, y: 80.0))
        case .Round:
            
            bezier.addArcWithCenter(CGPoint(x: self.frame.midX, y: self.frame.midY), radius: 25.0, startAngle: 0, endAngle: CGFloat(M_PI * 2), clockwise: true)
        }
        bezier.lineWidth = 2.0
        
        let fillColor = UIColor.redColor()
        fillColor.setFill()
        
        bezier.closePath()
        bezier.fill()
        
    }
    
}
