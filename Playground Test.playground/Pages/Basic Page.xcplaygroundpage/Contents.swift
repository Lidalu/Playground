//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

/*
 访问：直接通过文件名来访问资源，不需要加Resource
 
 支持图片，JSON， XML等，可用NSBundle.mainBundle获取路径
 
 两种资源类型
 
 Playground独有的： 在Resource目录下
 所有Playground共享的：在“~/Documents/Shared Playground Data"目录下，通过XCPSharedDataDirectoryPath来获取路径并访问
 
 */

//import XCTest
//
//let color = UIColor.redColor()
//let tuple = (100, "playGround example", 200.0)
//let str = "playGround example"
//let frame = CGRectMake(0.0, 0.0, 100.0, 100.0)
//let point = CGPointMake(100, 100)
//let size = CGSizeMake(100, 50)
//let size2 = CGSize(width: 100, height: 80)
//
//let image = UIImage(named: "7fd54a81jw1f1qmvakietj20c80f0ac4")
//
//let url = NSURL(string: "http://www.baidu.com")
//
//let attrString = NSAttributedString(string: "This is an attrString string", attributes: [NSForegroundColorAttributeName: UIColor.yellowColor(), NSFontAttributeName: UIFont.systemFontOfSize(50.0)])
//
//let view = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 200.0, height: 200.0))
//view.backgroundColor = UIColor.brownColor()
//
//let subview: UIButton = UIButton(type: .ContactAdd)
//subview.center = CGPoint(x: view.frame.midX, y: view.frame.midY)
//view.addSubview(subview)
//view
//NSLog("%@", view)
//NSLog("\(frame)")
//
////timeLine 显示结果
//
//XCPlaygroundPage.currentPage.liveView = view
//XCPlaygroundPage.currentPage.captureValue(frame, withIdentifier: "This i sa frame")
//XCPlaygroundPage.currentPage.captureValue(color, withIdentifier: "show red Color")
//XCPlaygroundPage.currentPage.captureValue(attrString, withIdentifier: "This is a string")
//
////: ## Example 6: 添加辅助代码
//let triangle = Shape(frame: frame, type: .Triangle)
//let square = Shape(frame: frame, type: .Square)
//let round = Shape(frame: frame, type: .Round)
//
//let icon = UIImageView(frame: CGRect(x: 0.0, y: 0.0, width: 200.0, height: 200.0))
//icon.image = UIImage(named: "2048_MarkMan.png")
//
//let path = NSBundle.mainBundle().pathForResource("emj", ofType: "plist")
//let dict = NSArray(contentsOfFile: path!)
//
//
//
//let SharedPath = XCPSharedDataDirectoryPath.stringByAppendingString("/icon.png")
//let sharedImage = UIImage(contentsOfFile:SharedPath)
//
///**
// *  字面量
//    字面量能以更直观的方式显示在我们的代码中
//    图片字面量（UIImage / NSImage）
//    文字字面量(NSURL对象)
//    颜色字面量(UIColr / NSColor)
// */
//
//let literImage = [#Image(imageLiteral: "header.png")#]
//
//let literFile = [#FileReference(fileReferenceLiteral: "File")#]
////let string = NSString(contentsOfURL: literFile)
//
//let literColor = [#Color(colorLiteralRed: 0.7540004253387451, green: 0, blue: 0.2649998068809509, alpha: 1)#]

/**
 *  添加第一个Page时，会生成两个page。其中一个是Playground现成的内容
    每个page都有自己的Source和Resource目录
    可以使用@next和@previous在各page间导航。page的前后顺序以navigator的顺序为准
 
    可以导航到任意Page
 */

/**
 *  异步代码
    playground中的代码都是顶层代码，从上到下逐条指令执行
    问题：网络请求，定时器，后台队列中执行的代码输出可能会被抛弃
    
    使用XCPlaygroundPage.currentPage.needsIndefiniteExecution = true来扩展playground的执行时间
    执行的时间为Timeline的时间，Timeline时间超时后便不再执行playground
    在编辑playground时会终止所有执行中的代码
    XCPlayground显示视图的代码会默认显示设置
 
 */
XCPlaygroundPage.currentPage.needsIndefiniteExecution = true

/**
 *  限制
 
    不能用于性能测试 --- > 用XCTest
        日志及各类输出都需要消耗时间
        性能依赖于执行代码的函数
    只支持模拟器，不支持真机，所有只支持真机的那些API无法测试
    暂时无法直接调用工程代码
 */

/**
 *  Playground调用工程代码
 Playground无法直接调用project中的代码
 
 解决方法
    将代码文件拷贝到Playground的Source中
    使用Framework
        framework与playground在同一个workspace下
        framework已编译
        如果是iOS framework，则需要是64位的
        如果是Objective-C工程，则需要设置Defines Module位YES
 */
//: [Next](@next)

