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
execute anchored eyes run summon arrow ^ ^ ^0.5 {Tags:[Skill,EclipseFlameBullet,NativeTask,FlyingRequired,KillInGround],NoGravity:1b,damage:1,Color:13720589,Passengers:[{id:"minecraft:area_effect_cloud",Duration:1200,Tags:[Skill,EclipseFlameCore,NativeTask]}]}
execute as @e[tag=EclipseFlameBullet,tag=!Initialized,distance=..3] positioned 0.0 0.0 0.0 positioned ^ ^ ^1.55 run function calc:throw_projectile/
#コアのダメージを保存
execute as @e[tag=EclipseFlameCore,tag=!Initialized,distance=..3] run function skill:damage/save
#投射物のダメージを保存 50倍=2.5s分
scoreboard players set _ Calc 500
function skill:damage/modify
execute as @e[tag=EclipseFlameBullet,tag=!Initialized,distance=..3] run function skill:damage/save
#投射物のOwnerを設定
data modify entity @e[tag=EclipseFlameBullet,tag=!Initialized,distance=..3,limit=1] Owner set from entity @s UUID
#演出
function makeup:skill/act/black_mage/eclipse_flame/act0
