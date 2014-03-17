#上下文.coffee
#1、this = @
setName = (name) -> @name = name #@name是上下文的一个属性，表示this.name

cat = {}
cat.setName = setName
cat.setName '福宝'
console.log cat.name

#2、apply和call方法，每个函数都有这两个方法，在特定的上下文中调用函数，
#而不用把这个函数附加到这个对象上
#apply接收对象和数组参数
#call接受对象和一个参数
pig = {}
setName.apply pig, ['小猪'] #等价setName.call pig '小猪'
console.log pig.name

#3、new关键字是最后一种给函数传递上下文的方法。
#new会把函数作为构造函数创建一个新的对象
Dog = setName #默认情况下，构造函数应该是大写的
dog1 = new Dog('Jim')
dog2 = new Dog('Tom')
console.log dog1.name #Jim
console.log dog2.name #Tom

callback = (message) => @voicemail.push message

setName2 = (@name) ->
