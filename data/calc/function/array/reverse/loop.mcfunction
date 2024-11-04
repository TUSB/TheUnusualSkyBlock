#> calc:array/reverse/loop
# リストを後ろから順に並べ直す

data modify storage calc: Array.reverse.Output append from storage calc: Array.reverse.Input[-1]
data remove storage calc: Array.reverse.Input[-1]

# Loop
execute if data storage calc: Array.reverse.Input[0] run function calc:array/reverse/loop
