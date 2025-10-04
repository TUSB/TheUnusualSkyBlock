#> skill:act/hunter/stakes_fire/act0
#
# ステークスファイア発動

# Damageからeffectivenessを取得
execute if score _ Level matches 1 run data modify storage skill: damage set from storage skill: Data.Hunter[{Name:"ステークスファイア",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: damage set from storage skill: Data.Hunter[{Name:"ステークスファイア",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: damage set from storage skill: Data.Hunter[{Name:"ステークスファイア",Level:3}].Damage
execute if score _ Level matches 4 run data modify storage skill: damage set from storage skill: Data.Hunter[{Name:"ステークスファイア",Level:3}].Damage

# 0～999の乱数取得
execute store result score _ Calc run random value 0..999

# 確率でスキルダメージを0.5倍に
execute if score _ Calc matches 0..300 run data modify storage skill: damage.physical set value 50

# ダメージ * effectiveness / 100
function skill:damage/add/skill/weapon

# ダメージをセーブ
function skill:damage/save

execute as @e[distance=..5,type=minecraft:arrow,tag=!Initialized,sort=nearest,limit=1] run function skill:act/hunter/stakes_fire/apply
