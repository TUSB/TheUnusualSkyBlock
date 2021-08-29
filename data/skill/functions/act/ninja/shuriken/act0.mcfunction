##############################
### 手裏剣発動
##############################

#ダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"手裏剣",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"手裏剣",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"手裏剣",Level:3}].Damage
execute if score _ Level matches 4 run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"手裏剣",Level:4}].Damage
execute if score _ Level matches 5 run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"手裏剣",Level:5}].Damage
function skill:damage/add/skill/magic
#投射物を召喚
execute anchored eyes run summon arrow ^ ^ ^0.5 {Tags:[Skill,Shuriken,NoGravity,NativeTask,FlyingRequired,KillInGround,HasSkillSnowball],NoGravity:1b,damage:10,Color:3752270,SoundEvent:"minecraft:item.trident.hit",Passengers:[{id:"minecraft:snowball",Tags:[SkillSnowball],Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1}}}]}
execute as @e[tag=Shuriken,tag=!Initialized,distance=..3] positioned 0.0 0.0 0.0 positioned ^ ^ ^1.55 run function calc:throw_projectile/
#ダメージを保存
execute as @e[tag=Shuriken,tag=!Initialized,distance=..3] run function skill:damage/save
#Ownerを設定
data modify entity @e[tag=Shuriken,tag=!Initialized,distance=..3,limit=1] Owner set from entity @s UUID
#演出
function makeup:skill/act/ninja/shuriken/act0
