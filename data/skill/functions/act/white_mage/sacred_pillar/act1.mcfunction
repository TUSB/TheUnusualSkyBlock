
### セイクリッドピラー発動

#弾召喚
execute anchored eyes run summon minecraft:trident ^ ^ ^-0.1 {Tags:[SacredPillar,NativeTask,CooldownRequired,FlyingRequired,KillInGround],PortalCooldown:10,NoGravity:true,Silent:true,DealtDamage:true,Rotation:[0f,90f]}
execute as @e[tag=SacredPillar,tag=!Initialized,distance=..3] positioned 0.0 0.0 0.0 positioned ^ ^ ^9.99 run function calc:throw_projectile/

#ダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.WhiteMage[{Name:"セイクリッドピラー",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.WhiteMage[{Name:"セイクリッドピラー",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: Damage set from storage skill: Data.WhiteMage[{Name:"セイクリッドピラー",Level:3}].Damage
function skill:damage/add/skill/magic

execute store result score _ Calc run data get entity @s Health 100
scoreboard players operation _ Calc -= @s PillarDamage
#>ダメージ補正
# Δhp/4 * (3列60HP*<属性攻撃値>*20) これくらい？ 20秒
# Δhp/4 * (4列80HP*<属性攻撃値>*35) これくらい？ 30秒
# Δhp/4 * (6列120HP*<属性攻撃値>*50) これくらい？ 40秒
scoreboard players set _ _ 4
scoreboard players operation _ Calc /= _ _
function skill:damage/modify

#ダメージ保存
execute as @e[tag=!Initialized,limit=1,distance=..3] run function skill:damage/save

#レベル保存
scoreboard players operation @e[tag=!Initialized,limit=1,distance=..3] Level = _ Level
