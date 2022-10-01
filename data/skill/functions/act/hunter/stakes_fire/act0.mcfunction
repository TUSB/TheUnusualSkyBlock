##############################
### ステークスファイア発動
##############################

#ダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Hunter[{Name:"ステークスファイア",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Hunter[{Name:"ステークスファイア",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: Damage set from storage skill: Data.Hunter[{Name:"ステークスファイア",Level:3}].Damage
execute if score _ Level matches 4 run data modify storage skill: Damage set from storage skill: Data.Hunter[{Name:"ステークスファイア",Level:4}].Damage
### 0～1000の乱数取得
execute store result score _ Calc run function calc:random
scoreboard players set _ _ 1000
scoreboard players operation _ Calc %= _ _
#確率でEffectivenessとスキルダメージを0に
execute if score _ Calc matches 0..200 run data modify storage skill: Damage.Effectiveness set value 0
execute if score _ Calc matches 0..200 run data modify storage skill: Damage.Fire set value 0
#ダメージ計算
function skill:damage/add/skill/weapon

execute as @e[distance=..5,type=minecraft:arrow,tag=!Initialized,sort=nearest,limit=1] run function skill:act/hunter/stakes_fire/apply
