
### 他のモブに対して属性ダメージを与える。

#ダメージ取得
data modify storage skill: Damage set from storage mob_data: Call.Mob
function skill:damage/add/skill/normal

execute store result score 00000000-0000-0000-0000-000000000000 Calc run data get storage mob_data: Call.Distance.Max 100
execute store result score 00000000-0000-0000-0000-000000000001 Calc run data get storage mob_data: Call.Distance.Min 100

#大雑把に目標とするモブを探す
execute if score 00000000-0000-0000-0000-000000000001 Calc matches 0 run function skill:damage/apply/
execute if score 00000000-0000-0000-0000-000000000000 Calc matches 1.. if score 00000000-0000-0000-0000-000000000001 Calc matches ..200 run tag @e[tag=Mob,distance=0.01..2] add TargetCards
execute if score 00000000-0000-0000-0000-000000000000 Calc matches 201.. if score 00000000-0000-0000-0000-000000000001 Calc matches ..400 run tag @e[tag=Mob,distance=2.01..4] add TargetCards
execute if score 00000000-0000-0000-0000-000000000000 Calc matches 401.. if score 00000000-0000-0000-0000-000000000001 Calc matches ..800 run tag @e[tag=Mob,distance=4.01..8] add TargetCards
execute if score 00000000-0000-0000-0000-000000000000 Calc matches 801.. if score 00000000-0000-0000-0000-000000000001 Calc matches ..1600 run tag @e[tag=Mob,distance=8.01..16] add TargetCards
execute if score 00000000-0000-0000-0000-000000000000 Calc matches 1601.. if score 00000000-0000-0000-0000-000000000001 Calc matches ..3200 run tag @e[tag=Mob,distance=16.01..32] add TargetCards
execute if score 00000000-0000-0000-0000-000000000000 Calc matches 3201.. if score 00000000-0000-0000-0000-000000000001 Calc matches ..6400 run tag @e[tag=Mob,distance=32.01..64] add TargetCards
execute if score 00000000-0000-0000-0000-000000000000 Calc matches 6401.. if score 00000000-0000-0000-0000-000000000001 Calc matches ..12800 run tag @e[tag=Mob,distance=64.01..128] add TargetCards

#細かく調べてダメージを与える
execute as @e[tag=TargetCards] run function skill:enemy/damage/check_distance
