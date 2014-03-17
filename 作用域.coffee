#作用域

age = 99
reincarnate = -> age = 0
reincarnate()
console.log "多少岁：#{age}" #输出0

reincarnate2 = -> age2 = 0
age2 = 99
reincarnate2()
console.log "多少岁：#{age2}" #输出99

reincarnate3 = -> age3 = 0
reincarnate3()
console.log "多少岁：#{age3}" #异常