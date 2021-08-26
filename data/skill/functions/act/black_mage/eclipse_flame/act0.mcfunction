##############################
### エクリプスフレイム発動
##############################

#ダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.BlackMage[{Name:"エクリプスフレイム",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.BlackMage[{Name:"エクリプスフレイム",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: Damage set from storage skill: Data.BlackMage[{Name:"エクリプスフレイム",Level:3}].Damage
execute if score _ Level matches 4 run data modify storage skill: Damage set from storage skill: Data.BlackMage[{Name:"エクリプスフレイム",Level:4}].Damage
execute if score _ Level matches 5 run data modify storage skill: Damage set from storage skill: Data.BlackMage[{Name:"エクリプスフレイム",Level:5}].Damage
function skill:damage/add/skill/magic
#雪玉を召喚
execute anchored eyes run summon snowball ^ ^ ^0.5 {Tags:[Skill,EclipseFlameBullet],NoGravity:1b,Item:{id:"minecraft:fire_charge",Count:1b},Passengers:[{id:"minecraft:area_effect_cloud",Duration:1200,Tags:[Skill,EclipseFlameCore,NativeTask]}]}
execute as @e[tag=EclipseFlameBullet,tag=!Initialized,distance=..3] positioned 0.0 0.0 0.0 positioned ^ ^ ^1.55 run function calc:throw_projectile/
#ダメージを保存
execute as @e[tag=EclipseFlameCore,tag=!Initialized,distance=..3] run function skill:damage/save
#演出
function makeup:skill/act/black_mage/eclipse_flame/act0
