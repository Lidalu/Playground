import Foundation
import UIKit

/**
 自定义Quick Look
 只允许NSObject的子类
 
 实现debugQuickLookObject方法
 支持的显示类型： String，Color， Bezier Path， Image
 */
public class Triangle: NSObject {

    public var point1: CGPoint = CGPointZero
    public var point2: CGPoint = CGPointZero
    public var point3: CGPoint = CGPointZero

    public init(point1: CGPoint, point2: CGPoint, point3: CGPoint) {
        
        
        super.init()
        self.point1 = point1
        self.point2 = point2
        self.point3 = point3
    }
    func debugQuickLookObject () -> AnyObject {
        
        let color = UIColor.blueColor()
        
        let bezier = UIBezierPath()
        bezier.moveToPoint(point1)
        bezier.addLineToPoint(point2)
        bezier.addLineToPoint(point3)
        
        color.setStroke()
        bezier.closePath()
        bezier.stroke()
        return bezier
    }
}

