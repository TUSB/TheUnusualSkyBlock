#> skill:act/summoner/fukafuka/act0

# ふかふか発動

# 弾召喚
execute anchored eyes positioned ^ ^ ^-0.1 run summon minecraft:potion ~ ~ ~ {Item:{id:"minecraft:splash_potion",components:{"minecraft:potion_contents":{custom_color:16777215}},count:1},Tags:[Skill,FukafukaPotion],Passengers:[{id:"minecraft:arrow",NoGravity:true,Tags:[Skill,Fukafuka,NativeTask]}]}
execute as @e[tag=FukafukaPotion,tag=!Initialized,distance=..3] positioned 0.0 0.0 0.0 positioned ^ ^ ^1.80 run function calc:throw_projectile/

# 飛翔物スキル設定
execute if score _ Level matches 1 run scoreboard players set @e[tag=Fukafuka,tag=!Initialized,limit=1] Interval 400
execute if score _ Level matches 2 run scoreboard players set @e[tag=Fukafuka,tag=!Initialized,limit=1] Interval 800

function makeup:skill/act/summoner/fukafuka/act0
