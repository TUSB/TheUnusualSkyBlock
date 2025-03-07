#> item:sign/click/break_log/
# 範囲内の原木をコントロールエリアに輸送
# forceloadチャンクに収まらないため分割
clone ~-9 ~-1 ~-9 ~ ~7 ~ to area:control_area 1 20 1 filtered #minecraft:logs
clone ~1 ~-1 ~-9 ~9 ~7 ~ to area:control_area 1 29 1 filtered #minecraft:logs
clone ~-9 ~-1 ~1 ~ ~7 ~9 to area:control_area 1 38 1 filtered #minecraft:logs
clone ~1 ~-1 ~1 ~9 ~7 ~9 to area:control_area 1 47 1 filtered #minecraft:logs

# 原木粉砕用エンティティ
fill ~-9 ~-1 ~-9 ~9 ~7 ~9 minecraft:wheat replace #minecraft:logs
clone ~-9 ~-1 ~-9 ~9 ~7 ~9 ~-9 ~-1 ~-9 filtered minecraft:air force
execute positioned ~-10 ~-2 ~-10 run tag @e[type=item,dx=20,dy=10,dz=20,tag=] add LogBreakRoot
execute positioned ~-10 ~-2 ~-10 at @e[type=item,dx=20,dy=10,dz=20,tag=LogBreakRoot] positioned ~ ~1 ~ run fill ~ ~ ~ ~ ~ ~ air destroy 
execute positioned ~-10 ~-2 ~-10 run kill @e[type=item,dx=20,dy=10,dz=20,tag=LogBreakRoot]

# 原木アイテムを与える
execute in area:control_area positioned 1 20 1 run fill ~ ~ ~ ~9 ~35 ~9 minecraft:air destroy
execute in area:control_area run tp @e[type=item,x=0,y=19,z=0,dx=10,dy=37,dz=10] @s

# 範囲内の葉の数を記録し報酬を召喚
execute store result score _ _ run fill ~-14 ~-1 ~-14 ~14 ~10 ~14 minecraft:air replace minecraft:oak_leaves
execute if score _ _ matches 1.. in area:control_area run setblock 5 5 5 minecraft:oak_leaves
execute if score _ _ matches 1.. in area:control_area run function item:sign/click/common/mine_loop
execute store result score _ _ run fill ~-14 ~-1 ~-14 ~14 ~10 ~14 minecraft:air replace minecraft:mangrove_leaves
execute if score _ _ matches 1.. in area:control_area run setblock 5 5 5 minecraft:mangrove_leaves
execute if score _ _ matches 1.. in area:control_area run function item:sign/click/common/mine_loop
execute store result score _ _ run fill ~-14 ~-1 ~-14 ~14 ~10 ~14 minecraft:air replace minecraft:jungle_leaves
execute if score _ _ matches 1.. in area:control_area run setblock 5 5 5 minecraft:jungle_leaves
execute if score _ _ matches 1.. in area:control_area run function item:sign/click/common/mine_loop
execute store result score _ _ run fill ~-14 ~-1 ~-14 ~14 ~10 ~14 minecraft:air replace minecraft:spruce_leaves
execute if score _ _ matches 1.. in area:control_area run setblock 5 5 5 minecraft:spruce_leaves
execute if score _ _ matches 1.. in area:control_area run function item:sign/click/common/mine_loop
execute store result score _ _ run fill ~-14 ~-1 ~-14 ~14 ~10 ~14 minecraft:air replace minecraft:dark_oak_leaves
execute if score _ _ matches 1.. in area:control_area run setblock 5 5 5 minecraft:dark_oak_leaves
execute if score _ _ matches 1.. in area:control_area run function item:sign/click/common/mine_loop
execute store result score _ _ run fill ~-14 ~-1 ~-14 ~14 ~10 ~14 minecraft:air replace minecraft:acacia_leaves
execute if score _ _ matches 1.. in area:control_area run setblock 5 5 5 minecraft:acacia_leaves
execute if score _ _ matches 1.. in area:control_area run function item:sign/click/common/mine_loop
execute store result score _ _ run fill ~-14 ~-1 ~-14 ~14 ~10 ~14 minecraft:air replace minecraft:birch_leaves
execute if score _ _ matches 1.. in area:control_area run setblock 5 5 5 minecraft:birch_leaves
execute if score _ _ matches 1.. in area:control_area run function item:sign/click/common/mine_loop
execute store result score _ _ run fill ~-14 ~-1 ~-14 ~14 ~10 ~14 minecraft:air replace minecraft:azalea_leaves
execute if score _ _ matches 1.. in area:control_area run setblock 5 5 5 minecraft:azalea_leaves
execute if score _ _ matches 1.. in area:control_area run function item:sign/click/common/mine_loop
execute store result score _ _ run fill ~-14 ~-1 ~-14 ~14 ~10 ~14 minecraft:air replace minecraft:flowering_azalea_leaves
execute if score _ _ matches 1.. in area:control_area run setblock 5 5 5 minecraft:flowering_azalea_leaves
execute if score _ _ matches 1.. in area:control_area run function item:sign/click/common/mine_loop
execute store result score _ _ run fill ~-14 ~-1 ~-14 ~14 ~10 ~14 minecraft:air replace minecraft:mangrove_leaves
execute if score _ _ matches 1.. in area:control_area run setblock 5 5 5 minecraft:mangrove_leaves
execute if score _ _ matches 1.. in area:control_area run function item:sign/click/common/mine_loop
execute store result score _ _ run fill ~-14 ~-1 ~-14 ~14 ~10 ~14 minecraft:air replace minecraft:cherry_leaves
execute if score _ _ matches 1.. in area:control_area run setblock 5 5 5 minecraft:cherry_leaves
execute if score _ _ matches 1.. in area:control_area run function item:sign/click/common/mine_loop

# warn対策
execute in area:control_area positioned 5.0 5.0 5.0 as @e[distance=0] run data modify entity @s PickupDelay set value 9s

# アイテムを与える
execute in area:control_area positioned 5.0 5.0 5.0 run tp @e[distance=0] @s

# 原木粉砕スケジュール起動
schedule function item:sign/click/break_log/loop 2t

function makeup:item/sign/common_firework.macro {color:6639666}
