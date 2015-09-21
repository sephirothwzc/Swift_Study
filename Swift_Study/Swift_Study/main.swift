//
//  main.swift
//  Swift_Study
//
//  Created by sephiroth on 15/9/18.
//  Copyright (c) 2015年 FFsephiroth. All rights reserved.
//

import Foundation

class debugClass{
    /**********基础部分************/
    func  theBasics (){
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
    func basicOperators(){
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
    
    /**********字符串**************/
    func stringsAndCharacters(){
        //Swift 的String类型是值类型
        var emptyString = ""               // 空字符串字面量
        var anotherEmptyString = String()  // 初始化 String 实例
        // 两个字符串均为空并等价。
        if emptyString == anotherEmptyString{
            println("\"\" 与 string() 相等 ！");
        }
        for character in "Dog!🐶" {
            println(character)
        }
        let yenSign: Character = "¥"
        
        let multiplier = 3
        let message = "\(multiplier) 乘以 2.5 是 \(Double(multiplier) * 2.5)"
        println(message)
        // message 是 "3 乘以 2.5 是 7.5"
        
        var oldstr:String = "火影忍者：鸣人"
        if oldstr.hasPrefix("火影忍者"){
            println("当前oldstr 前缀包含 火影忍者！")
        }
        if oldstr.hasSuffix("鸣人"){
            println("当前oldstr 后缀包含 鸣人!")
        }
    }
    
    /***************数组与字典*****************/
    func collectionTypes(){
        //数组
        var dmname:[String] = ["黑崎一护","漩涡鸣人","路飞"]
        if dmname.isEmpty{
            println("dmname is nil")
        } else {
            println("dmname is \(dmname.count)")
        }
        dmname.append("里包恩")
        dmname += ["日向雏田","日向宁次"]
        
        for (index,value) in enumerate(dmname){
            println("\(index) 下标 对象 \(value)")
        }
        var threeDoubles = [Double] (count: 3, repeatedValue: 0.0)
        // threeDoubles类型为Double[]，值为[0.0, 0.0, 0.0]
        var anotherThreeDoubles = Array(count: 3, repeatedValue: 2.5)
        // anotherThreeDoubles的类型被推断为Double[]，值为[2.5, 2.5, 2.5]
        
        var zhujue: Dictionary<String, String> = ["火影忍者": "漩涡鸣人", "死神": "黑崎一护"]
        for (zj,zjname) in zhujue{
            println("\(zj):\(zjname)")
        }
        
        for zj in zhujue.keys{
            println("\(zj)")
        }
        
        for zjn in zhujue.values{
            println("\(zjn)")
        }
        //注意： Swift的Dictionary类型不是一个有序集合，迭代访问字典的keys、values、键值对时候的顺序并无具体规定。
    }
    
    /***************控制流********************/
    func controlFlow(){
        
        for item in 1...5{
            println(item)
        }
        
        for var index = 0; index < 3; ++index {
            println("index is \(index)")
        }
        
        let someCharacter: Character = "e"
        switch someCharacter {
        case "a", "e", "i", "o", "u":
            println("\(someCharacter) is a vowel")
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
        "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
            println("\(someCharacter) is a consonant")
        default:
            println("\(someCharacter) is not a vowel or a consonant")
        }
        
        let count = 3_000_000_000_000
        let countedThings = "stars in the Milky Way"
        var naturalCount: String
        switch count {
        case 0:
            naturalCount = "no"
        case 1...3:
            naturalCount = "a few"
        case 4...9:
            naturalCount = "several"
        case 10...99:
            naturalCount = "tens of"
        case 100...999:
            naturalCount = "hundreds of"
        case 1000...999_999:
            naturalCount = "thousands of"
        default:
            naturalCount = "millions and millions of"
        }
        println("There are \(naturalCount) \(countedThings).")
        
        
        //Swift允许多个switch的case考虑相同的值。实际上点(0,0)能匹配例子中所有的四个case。然而，如果多个匹配出现，第一个匹配成功的case将被使用
        let somePoint = (1, 1)
        switch somePoint {
        case (0, 0):
            println("(0, 0) is at the origin")
        case (_, 0):
            println("(\(somePoint.0), 0) is on the x-axis")
        case (0, _):
            println("(0, \(somePoint.1)) is on the y-axis")
        case (-2...2, -2...2):
            println("(\(somePoint.0), \(somePoint.1)) is inside the box")
        default:
            println("(\(somePoint.0), \(somePoint.1)) is outside of the box")
        }
        
        //switch的case能使用where子句来进一步判断条件。 下面的例子将点(x,y)在下图种分类：
        //    let yetAnotherPoint = (1, 1)
        //    switch yetAnotherPoint {
        //    case let (x, y) where x == y:
        //        println("(\(x), \(y)) is on the line x == y")
        //    case let (x, y) where x == -y:
        //        println("(\(x), \(y)) is on the line x == -y")
        //    case let (x, y):
        //        println("(\(x), \(y)) is just some arbitrary point")
        //    }
        // prints "(1, -1) is on the line x == -y"
        
        let integerToDescribe = 5
        var description = "The number \(integerToDescribe) is"
        switch integerToDescribe {
        case 2, 3, 5, 7, 11, 13, 17, 19:
            description += " a prime number, and also"
            fallthrough//fallthrough关键字不检查case里的条件，会直接掉入下一个case。fallthrough简单的让代码执行到下一个case（或default）的代码块中，和标准C语言的特性一样。
        default:
            description += " an integer."
        }
        println(description)
    }
    
    /***************多返回值******************/
    func stringGetCount(string: String) -> (vowels: Int, consonants: Int, others: Int) {
        var vowels = 0, consonants = 0, others = 0
        for character in string {
            switch String(character).lowercaseString {
            case "a", "e", "i", "o", "u":
                ++vowels
            case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
            "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
                ++consonants
            default:
                ++others
            }
        }
        return (vowels, consonants, others)
    }
    
    /***************外部参数**************/
    func joinNameOut(firstName s1:String,twoName s2:String)->String{
        return s1 + s2
    }

    /***************外部名称速记**********/
    func joinName(#firstName: String,twoName: String ,joinName: String = "与")->String{
        return firstName + joinName + twoName//用一个hash符号（＃）作为名称的前缀,使用该名称同时作为本地参数名称和外部参数名称
    }
    
    /***************可变参数（数组）*******/
    func arithmeticMean(numbers: Int...) -> Int {
        var total: Int = 0
        for number in numbers {
            total += number
        }
        return total / Int(numbers.count)
        //提示
        //函数可以最多有一个可变参数的参数，而且它必须出现在参数列表的最后以避免多参数函 数调用时出现歧义。
        //如果函数有一个或多个参数使用默认值，并且还具有可变参数，将可变参数放在列表的 最末尾的所有默认值的参数之后
        //函数参数的默认值都是常量 在参数名称前用关键字var定义变量参数：
        //一个变量参数的变化没有超出了每个调用函数,所以对外部函数体是不可见的。变量参数只能存在于函数调用 的生命周期里。
        //in-out参数不能有默认值，可变参数的参数也不能被标记为inout。如果您标记参数为inout，它不能同时被标记为var或let。
        //输入输出参数与从函数返回的值是不一样的。上述swapTwoInts例子没有定义返回类型或返回一个值，但它仍然会修改someInt和anotherInt的值。输入输出参数是一个函数的另一个影响函数体范围之外的方式。
        
    }
}

var dC = debugClass()//声明对象实例

dC.theBasics()
dC.basicOperators()
dC.stringsAndCharacters()
dC.collectionTypes()
dC.controlFlow()

var total = dC.stringGetCount("some arbitrary string!")//方法调用获取返回值（多个）
println(total.consonants)
println(dC.joinNameOut(firstName: "鸣人",twoName: "佐助"))
println(dC.joinName(firstName: "纲手", twoName: "照美冥"))
println(dC.arithmeticMean(1,2,3,4,5))

