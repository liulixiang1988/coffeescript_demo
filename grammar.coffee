a = "Hi"

alert a

object1 = { one: 1, two: 2}
alert object1.one
alert object1

obj2 = one:1, two:2

obj3 = 
    one: 1,
    two: 2

array1 = [1, 2, 3]
array2 = [1, 2, 3,]

alert "#{a}" if not true

if true then alert "hello: #{a}"

##循环##
for name1 in ["理想", "福宝"]
    alert "#{name1}我爱你"

#列项表达式
family =  ["理想", "福宝", "爸爸", "妈妈"]
alert name for name in family when name =="福宝"

#列项表达式获取属性
me = gender: 'mail', age: 26
alert "#{propertyname} #{propertyvalue}" for propertyname, propertyvalue of me

#while循环返回数组
num = 6
minstrel = while num -= 1
    num + "hello"

alert minstrel

#数组
range = [1..5]
firstTwo = ["one", "two", "three"][0..1] #数组slice
my = "my string"[0..1] #string slice
family =  ["理想", "福宝", "爸爸", "妈妈"]
alert "福宝在家" if "福宝" in family #使用in来判断值是否在数组中

#别名
@fubao = true #@就是this
User::first = "Liu" #::就是prototype

#存在操作符 ?只有在不为null和undefine时返回真
#a = 1
alert "hi" if a?

direction = a ? 40 #存在则返回a，否则返回40
alert direction

b = "hello"
b[0..1]?.upper() #左边是否存在，存在就调用后边的方法

blackKnight.getLegs().kick?() #方法是否存在，存在就调用

#类
class Animal
	#构造方法
    constructor:(@name)->
        alert "#{@name} hello"

animal = new Animal "cat" #新建类实例
