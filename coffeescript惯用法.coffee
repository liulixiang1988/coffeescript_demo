#coffeescript惯用法

#4.1 each
sayhi(name) for name in nameList

#4.2 Map
result = (item.name for item in array) #映射后的数组

#4.3 筛选 使用列项表达式when(注意，python中使用if，这里使用when)
result = (item for item in array when item.name is "test")

passed = []
failed = []
(if score > 60 then passed else failed).push score for score in [49, 58, 76, 82, 90, 88]
#or
passed = (score for score in scores when score > 60)

#4.4 包含
#数组使用in (类似python)
included = "test" in array 

#字符串使用indexOf()函数，看其返回值是否为负
included = "a long test string".indexOf("test") isnt -1
#or
string = "a long test string"
included = !!~ string.indexOf "test"

#4.5 属性迭代
#js中使用in，coffeescript中使用of
obj = {one: 1, two: 2}
alert("#{key} = #{value}") for key, value of obj

#4.6 Min/Max
Math.max [14, 35, -7, 46, 98]...
Math.min [14, 35, -7, 46, 98]...

#4.7 多个参数
#使用...解构数组


