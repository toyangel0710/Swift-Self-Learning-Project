//: Playground - noun: a place where people can play

import UIKit

//==========
//基本變數:
//==========
//1.整數(Int):0,1,2,3,4,-1
var a = 4
var b = 3
var c = a+b

//2.浮點數(Double,Float):1.1, 3.0, 4.5
//2.1 Double 64位元
//2.2 Float 32位元
var d = 3.0
var e = 4.5


//3.字串(String)："I'm 🐥"
//補充：字元(Char)：''
var str = "I'm James"

//4.布林值(Bool):對/錯 （true/false)
var imRight = true

//==========
//輸出
//==========
//裡面只能放整數
print(str + " " + String(d))

//==========
//註解
//==========
//方法一：兩個斜線
/*
 方法二：用星號包夾
 */

//偷吃步：Command+/

//==========
//變數＆常數
//==========
var va = 5 //變數,初始值是5
print(va)
va = 3
print(va)
va = 6
print(va)

let pi = 3.14159 //常數
print(pi)

//==========
//Tuples
//==========
let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print(statusCode)
print(statusMessage)
print(http404Error.0)
print(http404Error.1)

let http202Error = (code: 202, state:"unknow")
print(http202Error.code)
print(http202Error.state)

func checkNetworkState() -> (Int, String) {
    return (404, "Not Found")
}

print(checkNetworkState())

//=========
//運算子
//=========
//指派運算子(=)
//數值運算子(+-*/)
var result = 5 / 4 //除法只取整數

//餘數運算(%)
var result1 = 5 % 3
//複合指派(+=)
var x1 = 1
x1 += 1 // x1 = x1 + 1
//比較運算(==,!=,>,<,>=,<=)
5<=5

//=========
//if else (條件判斷）
//=========
var age = 18
var tall = 180
var hair = "短髮"

if age >= 20 {
    //成立
    if tall > 180, hair == "長髮" {
        print("age>=20且tall>180且hair是長髮")
    } else {
        print("age>=20")
    }
} else {
    print("age<20")
}

//========
//switch （條件判斷）
//========
//判斷oddvar是不是奇數
var oddvar = 5;

switch oddvar {
case 1,3,5,7,9:
    print("oddvar是奇數")
case 2,4,6,8,10:
    print("oddvar是偶數")
default:
    print("無法判斷")
}

switch age {
case 0..<20:
    print("未成年人")
default:
    print("成年人")
}

//========
//For 迴圈
//========
//for index in 0..<3 {
//    print(index)
//}

/* 99乘法表
練習印出下面的排版
1*1=1 2*1=2 3*1=3
1*2=2 2*2=4 3*2=6
*/
//for x in 0...9 {
//    if x == 0 {
//        continue
//    }
//    for y in 0...9 {
//        if y == 0 {
//            continue
//        }
//        print("\(x)*\(y)=\(x*y) ", separator: "", terminator: "")
//    }
//    print("")
//}

//========
//while (迴圈）
//========
for x in 0...3 {
    print("x=\(x)")
}

var x2 = 0
while x2<=3 {
    print("x2=\(x2)")
    x2 += 1
}

//========
//repeat while （迴圈）
//========
repeat {
    print("x3=\(x2)")
    x2 += 1
} while x2 <= 3

//========
//控制轉移語句
//========
//continue, break, return

var continueVar = 5
var c2 = 0
while(c2 < 10) {
    c2 += 1
    if c2 == continueVar {
        break
    }
    print("c2 = \(c2)")
}


//計算兩數相加並回傳（return)結果
func addValue(x:Int, y:Int) -> Int {
    return x+y
}

var twoValueAddResult = addValue(x: 2, y: 3)
print("Result: \(twoValueAddResult)")

