//
//  main.swift
//  Swift_Study
//
//  Created by sephiroth on 15/9/18.
//  Copyright (c) 2015年 FFsephiroth. All rights reserved.
//

import Foundation

/**********基础部分************/
func  TheBasics (){
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
    
    /*可选绑定*/
    if let actualNumber = possibleNumber.toInt() {
        println("\(possibleNumber) has an integer value of \(actualNumber)")
    } else {
        println("\(possibleNumber) could not be converted to an integer")
    }
    // 输出 "123 has an integer value of 123"
    
    var surveyAnswer: String?// surveyAnswer 被自动设置为 nil
    println(surveyAnswer)//nil
    surveyAnswer = "赋值"
    println(surveyAnswer!)//!表示拆封取值（强制认为有值，如果没有则会触发运行时错误）
    //fatal error: unexpectedly found nil while unwrapping an Optional value(lldb)
    if (surveyAnswer != nil){
        println("\(surveyAnswer) is not nil!")
    } else {
        println("\(surveyAnswer) is nil")
    }
    
    /*断言*/
    let age = -3
    //assert(age >= 0, "A person's age cannot be less than zero")
    // 因为 age < 0，所以断言会触发
}

/**********运算符**************/
func BasicOperators(){
    var 🐶 = "🐶"
    var 🐱 = "🐱"
    var 🐱🐶 = 🐶 + 🐱
    println(🐱🐶)
    
    var chushu = 9
    var beichushu = 4
    println(chushu % beichushu)
    
    /*全闭区间*/
    for index in 1...5 {
        println("\(index) * 5 = \(index * 5)")
    }
    /*半闭区间*/
    let names = ["Anna", "Alex", "Brian", "Jack"]
    let count = names.count
    for i in 0..<count {
        println("第 \(i + 1) 个人叫 \(names[i])")
    }
}

TheBasics()
BasicOperators()