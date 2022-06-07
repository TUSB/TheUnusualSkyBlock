##############################
### メテオストライク
##############################

scoreboard players set @s Interval 31

# ダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.BlackMage[{Name:"メテオストライク",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.BlackMage[{Name:"メテオストライク",Level:2}].Damage
function skill:damage/add/skill/magic
function skill:damage/save

#落下方向を設定
execute positioned ~ ~10 ~ positioned as @e[tag=Enemy,distance=..24,limit=1,sort=nearest] facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute store result score _ _ run data get entity @s Rotation[1]
execute if score _ _ matches -35..34 facing entity @a[limit=1] feet run tp @s ~ ~ ~ ~180 -35
execute if score _ _ matches 35.. rotated as @s run tp @s ~ ~ ~ facing ^ ^ ^-1
execute rotated as @s positioned ~ ~3 ~ positioned ^ ^ ^56 run tp @s ~ ~ ~ facing ^ ^ ^-1

#演出
function makeup:skill/act/black_mage/meteor_strike/act1
