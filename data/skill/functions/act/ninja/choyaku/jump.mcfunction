##############################
### 跳躍ダメージ
##############################

#ダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"跳躍",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"跳躍",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"跳躍",Level:3}].Damage
execute if score _ Level matches 4 run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"跳躍",Level:4}].Damage
function skill:damage/add/skill/magic
#ダメージ付与
execute as @e[tag=Enemy,distance=..9] run function skill:damage/apply/
#インターバル設定
scoreboard players set @s Interval 5
#演出
function makeup:skill/act/ninja/choyaku/jump
