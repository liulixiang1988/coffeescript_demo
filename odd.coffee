odd = (num) ->
    #1、普通的if else表达式，注意is就是==
    if typeof num is 'number'
        if num is Math.round num
            if num > 0
                num % 2 is 1
            else
                throw "#{num} 不是正数"
        else 
            throw "#{num} 不是整数"
    else
        throw "#{num} 不是一个数字"

try
    odd 5.1
catch e
    console.log e

odd2 = (num) ->
    #2、 unless 条件表达式
    unless typeof num is 'number'
        throw "#{num} 不是一个数字"
    unless num is Math.round num
        throw "#{num}不是整数"
    unless num > 0
        throw "#{num}不是正数"
    num % 2 is 1

try
    odd2 -5
catch e
    console.log e

odd3 = (num) ->
    #3、throw ... unless... 后向表达式
    throw "#{num}不是一个数字" unless typeof num is 'number'
    throw "#{num}不是整数" unless num is Math.round num
    throw "#{num}不是正数" unless num > 0
    num % 2 is 1

try
    odd3 'abc'
catch e
    console.log e
