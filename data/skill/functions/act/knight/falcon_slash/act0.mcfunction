
### はやぶさ斬り発動

# ダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Knight[{Name:"隼斬り",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Knight[{Name:"隼斬り",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: Damage set from storage skill: Data.Knight[{Name:"隼斬り",Level:3}].Damage
execute if score _ Level matches 4 run data modify storage skill: Damage set from storage skill: Data.Knight[{Name:"隼斬り",Level:4}].Damage
execute if score _ Level matches 5 run data modify storage skill: Damage set from storage skill: Data.Knight[{Name:"隼斬り",Level:5}].Damage

# ダメージ計算
function skill:damage/add/skill/weapon

# 周りのモブにダメージ付与
execute positioned ^ ^ ^5 as @e[tag=Enemy,distance=..6] run function skill:damage/apply/

scoreboard players set _ FalconSlashTimer 0
execute positioned ^ ^ ^5 as @e[distance=..6,tag=Enemy] run function skill:act/knight/falcon_slash/decorate/initialize
