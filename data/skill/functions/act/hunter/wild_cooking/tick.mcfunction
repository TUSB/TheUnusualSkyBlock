##############################
### ワイルドクッキングtick
##############################

#ダメージ
function skill:damage/load
execute as @e[tag=Mob,distance=..1.5] run function skill:damage/apply/
#デバフを5秒付与 Lv2のときは+100で区別
execute if score @s Level matches 1 run scoreboard players set @e[tag=Mob,distance=..32] WildCooking 5
execute if score @s Level matches 2 run scoreboard players set @e[tag=Mob,distance=..32] WildCooking 105
#水中でkill
execute if block ~ ~ ~ water run kill @s
#演出
execute if score $Second Count matches 0 run function makeup:skill/act/hunter/wild_cooking/tick
