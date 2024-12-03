#> item:sign/click/common/consume_loop
# 植え付け用 種消費の共通function
execute store result score # _ run data get entity @e[distance=0,tag=ConsumeItem,limit=1] Item.count
scoreboard players operation _ Calc -= # _

execute if score _ Calc matches ..-1 store result entity @e[distance=0,tag=ConsumeItem,limit=1] Item.count byte -1 run scoreboard players get _ Calc
execute if score _ Calc matches 0.. run kill @e[distance=0,tag=ConsumeItem,limit=1]

execute if score _ Calc matches 1.. run function item:sign/click/common/consume_loop
