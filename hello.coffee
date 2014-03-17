console.log 'Hello, world!'

#函数1
console.log do -> "函数1"

#函数2
h1 = -> "函数2"
console.log h1()

#函数3
h2 = (greeting) -> "带有参数的函数：#{greeting}"
console.log h2('你好')

#传递给函数的参数可以使用arguments数组来访问，因此h2可以这样定义
h3 = (greeting) -> "带有参数的函数：使用arguments数组 #{arguments[0]}"
console.log h3('你好')

#+操作不会忽略空格
squadron = 'Red'
xWing = squadron + 5 #5前面必须要有空格

#操作符
cube = (num) -> Math.pow num, 3
console.log cube(2)

odd = (num) -> num % 2 is 1
console.log odd(3)