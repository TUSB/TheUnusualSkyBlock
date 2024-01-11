# 範囲内の原木をコントロールエリアに輸送
clone ~-7 ~-1 ~-7 ~7 ~7 ~7 to area:control_area 0 20 0 filtered #minecraft:logs

# 原木粉砕用エンティティ
fill ~-7 ~-1 ~-7 ~7 ~7 ~7 minecraft:wheat replace #minecraft:logs
clone ~-7 ~-1 ~-7 ~7 ~7 ~7 ~-7 ~-1 ~-7 filtered minecraft:air force
execute positioned ~-7 ~-1 ~-7 run tag @e[type=item,dx=14,dy=8,dz=14,tag=] add LogBreakRoot
execute positioned ~-7 ~-1 ~-7 at @e[type=item,dx=14,dy=8,dz=14,tag=LogBreakRoot] positioned ~ ~1 ~ run fill ~ ~ ~ ~ ~ ~ air destroy 
execute positioned ~-7 ~-1 ~-7 run kill @e[type=item,dx=14,dy=8,dz=14,tag=LogBreakRoot]

# 原木アイテムを与える
execute in area:control_area positioned 0 20 0 run fill ~ ~ ~ ~14 ~8 ~14 minecraft:air destroy
execute in area:control_area run tp @e[type=item,x=0,y=16,z=0,dx=15,dy=15,dz=15] @s

# 範囲内の葉の数を記録し報酬を召喚
execute store result score _ _ run fill ~-11 ~-1 ~-11 ~11 ~10 ~11 minecraft:air replace minecraft:oak_leaves
execute if score _ _ matches 1.. in area:control_area run setblock 5 5 5 minecraft:oak_leaves
execute if score _ _ matches 1.. in area:control_area run function item:sign/click/common/mine_loop
execute store result score _ _ run fill ~-11 ~-1 ~-11 ~11 ~10 ~11 minecraft:air replace minecraft:mangrove_leaves
execute if score _ _ matches 1.. in area:control_area run setblock 5 5 5 minecraft:mangrove_leaves
execute if score _ _ matches 1.. in area:control_area run function item:sign/click/common/mine_loop
execute store result score _ _ run fill ~-11 ~-1 ~-11 ~11 ~10 ~11 minecraft:air replace minecraft:jungle_leaves
execute if score _ _ matches 1.. in area:control_area run setblock 5 5 5 minecraft:jungle_leaves
execute if score _ _ matches 1.. in area:control_area run function item:sign/click/common/mine_loop
execute store result score _ _ run fill ~-11 ~-1 ~-11 ~11 ~10 ~11 minecraft:air replace minecraft:spruce_leaves
execute if score _ _ matches 1.. in area:control_area run setblock 5 5 5 minecraft:spruce_leaves
execute if score _ _ matches 1.. in area:control_area run function item:sign/click/common/mine_loop
execute store result score _ _ run fill ~-11 ~-1 ~-11 ~11 ~10 ~11 minecraft:air replace minecraft:dark_oak_leaves
execute if score _ _ matches 1.. in area:control_area run setblock 5 5 5 minecraft:dark_oak_leaves
execute if score _ _ matches 1.. in area:control_area run function item:sign/click/common/mine_loop
execute store result score _ _ run fill ~-11 ~-1 ~-11 ~11 ~10 ~11 minecraft:air replace minecraft:acacia_leaves
execute if score _ _ matches 1.. in area:control_area run setblock 5 5 5 minecraft:acacia_leaves
execute if score _ _ matches 1.. in area:control_area run function item:sign/click/common/mine_loop
execute store result score _ _ run fill ~-11 ~-1 ~-11 ~11 ~10 ~11 minecraft:air replace minecraft:birch_leaves
execute if score _ _ matches 1.. in area:control_area run setblock 5 5 5 minecraft:birch_leaves
execute if score _ _ matches 1.. in area:control_area run function item:sign/click/common/mine_loop
execute store result score _ _ run fill ~-11 ~-1 ~-11 ~11 ~10 ~11 minecraft:air replace minecraft:azalea_leaves
execute if score _ _ matches 1.. in area:control_area run setblock 5 5 5 minecraft:azalea_leaves
execute if score _ _ matches 1.. in area:control_area run function item:sign/click/common/mine_loop
execute store result score _ _ run fill ~-11 ~-1 ~-11 ~11 ~10 ~11 minecraft:air replace minecraft:flowering_azalea_leaves
execute if score _ _ matches 1.. in area:control_area run setblock 5 5 5 minecraft:flowering_azalea_leaves
execute if score _ _ matches 1.. in area:control_area run function item:sign/click/common/mine_loop

# warn対策
execute in area:control_area positioned 5.0 5.0 5.0 as @e[distance=0] run data modify entity @s PickupDelay set value 9s

# アイテムを与える
execute in area:control_area positioned 5.0 5.0 5.0 run tp @e[distance=0] @s

# 原木粉砕スケジュール起動
schedule function item:sign/click/break_log/loop 2t

function makeup:item/sign/break_log