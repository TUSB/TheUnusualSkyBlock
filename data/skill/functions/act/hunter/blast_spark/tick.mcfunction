
### ブラストスパーク継続

scoreboard players remove @s BlastSpark 1

###弾召喚
summon minecraft:arrow ^ ^ ^ {Tags:[Skill,BlastSpark,CooldownRequired,NativeTask,FlyingRequired],PortalCooldown:10,NoGravity:true,Silent:true,PierceLevel:127b,ShotFromCrossbow:true,Potion:"minecraft:luck"}

#Owner継承
data modify entity @e[tag=!Initialized,tag=BlastSpark,limit=1,distance=..0.01] Owner set from entity @s UUID
###モーション付与
execute as @e[tag=!Initialized,tag=BlastSpark,limit=1,distance=..0.01] positioned 0.0 0.0 0.0 positioned ^ ^ ^2.50 run function calc:throw_projectile/

execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Hunter[{Name:"ブラストスパーク",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Hunter[{Name:"ブラストスパーク",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: Damage set from storage skill: Data.Hunter[{Name:"ブラストスパーク",Level:3}].Damage
#ダメージ計算
function skill:damage/add/skill/weapon
#ダメージを保存
execute as @e[tag=!Initialized,tag=BlastSpark,limit=1,distance=..0.01] run function skill:damage/save
