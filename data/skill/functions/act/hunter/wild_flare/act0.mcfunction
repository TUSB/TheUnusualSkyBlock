
### ワイルドフレア発動

###矢修正
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Hunter[{Name:"ワイルドフレア",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Hunter[{Name:"ワイルドフレア",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: Damage set from storage skill: Data.Hunter[{Name:"ワイルドフレア",Level:3}].Damage
#ダメージ計算
function skill:damage/add/skill/weapon
#ダメージを保存
execute as @e[distance=..5,type=#minecraft:arrows,tag=!Initialized,sort=nearest,limit=1] run data merge entity @s {PortalCooldown:2,Tags:[WildFlareSeed,CooldownRequired]}
scoreboard players operation @e[distance=..5,type=#minecraft:arrows,tag=!Initialized,sort=nearest,limit=1] Level = _ Level

function makeup:skill/act/hunter/wild_flare/act0
