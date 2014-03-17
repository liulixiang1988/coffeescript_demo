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