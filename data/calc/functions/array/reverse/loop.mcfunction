# リストを後ろから順に並べ直す

data modify storage calc: Array.reverse.output append from storage calc: Array.reverse.input[-1]
data remove storage calc: Array.reverse.input[-1]

# Loop
execute if data storage calc: Array.reverse.input[0] run function calc:array/reverse/loop
