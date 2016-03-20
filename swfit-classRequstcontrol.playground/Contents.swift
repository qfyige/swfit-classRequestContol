//: Playground - noun: a place where people can play

import UIKit

var str = "Hello class request control"
/*swift 定义了一个三级访问控制，他们决定了应用程序的那些部分可以访问哪些信息。
*public （公类）公共类，方法和属性可供aoo中任意的部分调用
*internal （内部）内部数据只能在定义这些数据的模块内访问，模块是一个应用程序，库或者框架，这就是我们不能访问uikit 内部工作机制的原因－－他被定义为uikit 的internal ，internal是默认的访问控制级别，即如果不指定访问限制级别，那就认为是 internal
*private （私有） 私有数据只能供声明他的文件访问，这就是说，它可以创建一些类，向同一模块中的其他类隐藏自己的工作机制，这样就可以最大限度的减少这些类相互之间暴漏的接触面
*
*
*/

// !!! 一个方法或者属性能够拥有的访问控制种类，取决于他所在的类的访问级别，一个方法的可访问范围不能大于他所在的类，例如我们不能定义一个拥有公共方法的私有类
//默认情况下所有的属性和方法都是internal，如果我们愿意的话可以明确将一个成员定义为internal，但这是不必要的。
//!!!被定义为private的类是一个例外，如果没有为一个成员声明访问控制级别，他会被设定为private而不是internal

public class requstControlClass {
    //可供所有人访问
    public var publicProperty = 123
    //只能 在源文件中使用
    private var privateProperty = 123
    private (set) var prigviteP = 234
}
//我们可以将一个属性setter声明为私有的，从而使这个属性只读，这意味着在声明他的源文件内部，可以随便读这个属性的值，但其他文件职能读取它的值。
var re = requstControlClass()
re.publicProperty
re.privateProperty
re.prigviteP



