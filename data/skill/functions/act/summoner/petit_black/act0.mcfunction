#> skill:act/summoner/petit_black/act0

# ダメージ
    execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Summoner[{Name:"サモンぷちブラック",Level:1}].Damage
    execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Summoner[{Name:"サモンぷちブラック",Level:2}].Damage
    function skill:damage/add/skill/magic

# 矢とAECを召喚
    execute anchored eyes run summon arrow ^ ^ ^0.5 {Tags:[Skill,PetitBlackBullet,NativeTask,FlyingRequired,KillInGround],NoGravity:1b,damage:1,Color:11144657,Passengers:[{id:"minecraft:area_effect_cloud",Duration:200,Tags:[Skill,PetitBlack,NativeTask]}]}
    execute as @e[tag=PetitBlackBullet,tag=!Initialized,distance=..3] positioned 0.0 0.0 0.0 positioned ^ ^ ^0.5 run function calc:throw_projectile/
#コアのダメージを保存
    execute as @e[tag=PetitBlack,tag=!Initialized,distance=..3] run function skill:damage/save
#投射物のダメージを保存 10倍=1.0s分
    scoreboard players set _ Calc 1000
    function skill:damage/modify
    execute as @e[tag=PetitBlackBullet,tag=!Initialized,distance=..3] run function skill:damage/save
#投射物のOwnerを設定
    data modify entity @e[tag=PetitBlackBullet,tag=!Initialized,distance=..3,limit=1] Owner set from entity @s UUID
#演出
    function makeup:skill/act/summoner/petit_black/launch