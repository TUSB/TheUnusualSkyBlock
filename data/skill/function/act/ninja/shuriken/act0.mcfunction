#> skill:act/ninja/shuriken/act0
#
# 手裏剣発動

# ダメージ
execute if score _ Level matches 1 run data modify storage skill: damage set from storage skill: Data.Ninja[{Name:"手裏剣",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: damage set from storage skill: Data.Ninja[{Name:"手裏剣",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: damage set from storage skill: Data.Ninja[{Name:"手裏剣",Level:3}].Damage
execute if score _ Level matches 4 run data modify storage skill: damage set from storage skill: Data.Ninja[{Name:"手裏剣",Level:4}].Damage
execute if score _ Level matches 5 run data modify storage skill: damage set from storage skill: Data.Ninja[{Name:"手裏剣",Level:5}].Damage

# 投射物を召喚
summon arrow ^ ^ ^0.5 {Tags:[Skill,Shuriken,FlyingRequired,KillInGround,HasSkillDisplay],NoGravity:1b,damage:1d,PierceLevel:10b,Passengers:[{id:"minecraft:item_display",billboard:"center",Tags:["SkillDisplay"],item:{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_model_data":{floats:[122]},"minecraft:firework_explosion":{shape:"small_ball",colors:[I;16777215]}}}}],SoundEvent:"item.trident.hit"}
execute as @e[tag=Shuriken,tag=!Initialized,distance=..3] positioned 0.0 0.0 0.0 positioned ^ ^ ^1.55 run function calc:throw_projectile/

# 貫通数管理 レベルをnとして2n-1
scoreboard players set _ _ 2
scoreboard players set _ Calc 1
execute store result score @e[tag=Shuriken,tag=!Initialized,distance=..3] ShurikenPierceCount run scoreboard players operation _ _ *= _ Level
scoreboard players operation @e[tag=Shuriken,tag=!Initialized,distance=..3] ShurikenPierceCount -= _ Calc

# ダメージを保存
execute as @e[tag=Shuriken,tag=!Initialized,distance=..3] run function skill:damage/save

# Ownerを設定
data modify entity @e[tag=Shuriken,tag=!Initialized,distance=..3,limit=1] Owner set from entity @s UUID

# 演出
function makeup:skill/act/ninja/shuriken/act0
