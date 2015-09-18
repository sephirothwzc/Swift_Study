//
//  main.swift
//  Swift_Study
//
//  Created by sephiroth on 15/9/18.
//  Copyright (c) 2015年 FFsephiroth. All rights reserved.
//

import Foundation

let sj = 10
var cj = "2015-09-15"
println("Hello, World!\(cj)")//输出字符串插值

/*tuples 元祖*/
let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
println("The status code is \(statusCode)")
// 输出 "The status code is 404"
println("The status message is \(statusMessage)")
// 输出 "The status message is Not Found"
let (justTheStatusCode, _) = http404Error
println("The status code is \(justTheStatusCode)")
// 输出 "The status code is 404"
println("The status code is \(http404Error.0)")
// 输出 "The status code is 404"
println("The status message is \(http404Error.1)")
// 输出 "The status message is Not Found"

let http200Status = (statusCode: 200, description: "OK")//定义元组的时候给单个元素命名
println("The status code is \(http200Status.statusCode)")
// 输出 "The status code is 200"
println("The status message is \(http200Status.description)")
// 输出 "The status message is OK"

/*使用可选（optionals）来处理值可能缺失的情况*/
let possibleNumber = "123"
let convertedNumber = possibleNumber.toInt()

if (convertedNumber != nil) {
    println("\(possibleNumber) has an integer value of \(convertedNumber!)")
} else {
    println("\(possibleNumber) could not be converted to an integer")
}
// 输出 "123 has an integer value of 123"

let holle = "hello"
let convertholle = holle.toInt()
if (convertholle != nil){
    println("\(convertholle) is number integer!")
} else {
    println("\(holle) is not integer!")
}
