#> item:sign/click/harvest_potato
# 範囲内の育ち切った作物の数を記録
execute store result score _ Calc store result score _ _ run clone ~-9 ~-1 ~-9 ~9 ~7 ~9 ~-9 ~-1 ~-9 filtered minecraft:potatoes[age=7] force

# 育ち切った作物の数だけ報酬を召喚
execute if score _ _ matches 1.. in area:control_area run setblock 5 5 5 minecraft:potatoes[age=7]
execute if score _ _ matches 1.. in area:control_area run function item:sign/click/common/mine_loop
execute in area:control_area run setblock 5 5 5 air

# warn対策
execute in area:control_area positioned 5.0 5.0 5.0 as @e[distance=0] run data modify entity @s PickupDelay set value 9s

# 得られた芋の数を取得
execute in area:control_area positioned 5.0 5.0 5.0 run tag @e[distance=0,nbt={Item:{id:"minecraft:potato"}}] add ConsumeItem
execute in area:control_area positioned 5.0 5.0 5.0 as @e[distance=0,tag=ConsumeItem] run data modify storage calc: List append from entity @s Item.count
execute store result score _ _ run function calc:list/sum/x1

# 芋を消費して再設置する 足りないなら作物を回収する
execute if score _ Calc <= _ _ in area:control_area positioned 5.0 5.0 5.0 run function item:sign/click/common/consume_loop
execute if score _ Calc matches 1.. run fill ~-9 ~-1 ~-9 ~9 ~7 ~9 air replace minecraft:potatoes[age=7]
execute if score _ Calc matches ..0 run fill ~-9 ~-1 ~-9 ~9 ~7 ~9 minecraft:potatoes[age=0] replace minecraft:potatoes[age=7]

# 収穫物を与える
execute in area:control_area positioned 5.0 5.0 5.0 run tp @e[distance=0] @s

function makeup:item/sign/common_firework.macro {color:16508604}
