//: [Previous](@previous)

import Foundation
import UIKit
import XCPlayground

// ##Example :异步代码执行 ---> 网络请求
XCPlaygroundPage.currentPage.needsIndefiniteExecution = true

let url = NSURL(string: "http://tp3.sinaimg.cn/3321824014/180/40020528887/1")
let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {
    
    data, _, _ in
    
    let image = UIImage(data: data!)
    
    XCPlaygroundPage.currentPage.captureValue(image, withIdentifier: "show an image")
}

task.resume()



var str = "Hello, playground"

//:
//: [Next](@next)
