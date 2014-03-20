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
Log = 
    log: ->
        console?.log(arguments...)

#4.8 and/or
# and 就是 &&, or 就是 ||, is就是==, isnt就是 !=
hash = ""
hash or= {} #如果hash为0， ""， 或者null，则都为false，将他们设置为 空对象
hash ?= {} #如果hash不存在，则为空对象

#4.9 解构赋值
someobj = 
    a: "one"
    b: "two"
{a, b} = someobj
console.log "a: #{a}, b: #{b}"
#在Node引入模块时很有用
{join, resolve} = require('path')
join('/users', 'Alex')

#4.10 其他类库 -参见coffeescript_jq.coffee如何调用配合jquery的

#4.11 私有变量
type = do ->
    classToType = {}
    for name in "Boolean Number String Function Array Date RegExp Undefined Null".split(" ")
        classToType["[object " + name + "]"] = name.toLowerCase()
    #return a function
    (obj) ->
        strType = Object::toString.call(obj)
        classToType[strType] or "object"

alert type("hello")
alert Object::toString.call("hello")

#上面代码会被编译为
### 
var type;

type = (function() {
  var classToType, name, _i, _len, _ref;
  classToType = {};
  _ref = "Boolean Number String Function Array Date RegExp Undefined Null".split(" ");
  for (_i = 0, _len = _ref.length; _i < _len; _i++) {
    name = _ref[_i];
    classToType["[object " + name + "]"] = name.toLowerCase();
  }
  return function(obj) {
    var strType;
    strType = Object.prototype.toString.call(obj);
    return classToType[strType] || "object";
  };
})();

alert(type("hello"));

alert(Object.prototype.toString.call("hello"));
###


