a = "Hi"

alert a

#字典
object1 = { one: 1, two: 2}
alert object1.one
alert object1

obj2 = one:1, two:2

obj3 = 
    one: 1,
    two: 2

#数组
array1 = [1, 2, 3]
array2 = [1, 2, 3,]

#判断
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


#-----------------------------------------------------------
#类
class Animal
    #构造方法
    constructor:(@name)->
        alert "#{@name} hello"

animal = new Animal "cat" #新建类实例

#实例属性
class Animal
    price: 5

    sell: (customer) ->

animal = new Animal
animal.sell(new Customer)

#用胖箭头来让this值锁定到上下文
class Animal
    price: 5

    sell: =>
        alert "Give me #{@price} shillings!"

animal = new Animal
$("#sell").click(animal.sell)

#静态变量
class Animal
    this.find = (name) -> #等价于 @find = (name) ->

Animal.find("Parrot")

#继承和super
class Animal
    constructor: (@name) ->

    alive: ->
        false

class Parrot extends Animal #extends表示继承
    constructor: -> #如果没有constructor，父类的构造方法自动被调用
        super("Parrot") #super表示父类

    dead: ->
        not @alive()

#继承：给已经被子类继承的父类添加属性，这些属性仍然被其子类继承过来
class Animal
    constructor: (@name) ->

class Parrot extends Animal

Animal::rip = true

parrot = new Parrot("Macaw")
alert("This parrot is no more") if parrot.rip
#注意：静态变量是直接拷贝给子类的，而不是使用原型继承

#Mixins, 是一种在模块间共享通用逻辑的良好模式。Mixins能够实现多个继承。
extend = (obj, mixin) ->
    obj[name] = method for name, method of mixin
    obj

include = (klass, mixin) ->
    extend klass.prototype, mixin

include Parrot, 
    isDecreased: true

(new Parrot).isDecreased

#扩展类
moduleKeywords = ['extended', 'included']

class Module
    @extend: (obj)->
        for key, value of obj when key not in moduleKeywords
            @[key] = value
   
        obj.extended?.apply(@)
        this
    @include: (obj) ->
        for key, value of obj when key not in moduleKeywords
            #赋值到原型prototype
            @::[key] = value
        obj.included?.apply(@)
        this

#扩展类 - 实例
classProperties=
    find: (id) ->
    create: (attrs) ->

instanceProperties = 
    save: ->

class User extends Module
    @extend classProperties
    @include instanceProperties

user = User.find(1)

user = new User
user.save()

#扩展模块后还可以调研回掉函数
ORM = 
    find: (id) ->
    create: (attrs) ->
    extended: ->
        @include
            save: ->

class User extends Module
    @extend ORM

#回调函数
click = (name, callback_func) ->
    callback_func "#{name}，你好!"
print = (msg) -> alert msg
click("理想", print)
