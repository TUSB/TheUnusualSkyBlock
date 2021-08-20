##############################
### ディール発動
##############################

#ダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Summoner[{Name:"ディール",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Summoner[{Name:"ディール",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: Damage set from storage skill: Data.Summoner[{Name:"ディール",Level:3}].Damage
function skill:damage/add/skill/magic
#ダメージ付与
execute as @e[distance=..30,tag=Mob] at @s if block ~ ~-1 ~ #minecraft:wool run function skill:damage/apply/
#演出
function makeup:skill/act/summoner/deal/act0
