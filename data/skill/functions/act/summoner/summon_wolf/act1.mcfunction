##############################
### サモンＰ：ウルフ
##############################

summon minecraft:wolf ~ ~ ~ {CustomName:'{"translate":"フレンド・ウルフ","color":"#FFFF00","bold":true}',CustomNameVisible:true,Motion:[0d,0.5d,0d],PortalCooldown:3000,Team:Friendly,ActiveEffects:[{Id:5,Duration:-1,Amplifier:0b,ShowParticles:false},{Id:11,Amplifier:4b,Duration:50}],Attributes:[{Name:"generic.movement_speed",Base:0.4d},{Name:"generic.follow_range",Base:48d}]}
execute if score _ Level matches 2 as @e[distance=0,tag=!Initialized] at @s run function skill:act/summoner/summon_snow_golem/health_boost
#Ownerを設定
data modify entity @e[tag=!Initialized,distance=0,limit=1] Owner set from entity @s UUID
#CollarColorをランダムに設定
execute store result score _ Calc run function calc:random
scoreboard players set _ _ 16
execute store result entity @e[tag=!Initialized,distance=0,limit=1] CollarColor byte 1 run scoreboard players operation _ Calc %= _ _
#演出
function makeup:skill/act/summoner/summon_wolf/act1
#AI付与
function settings:enemy/global/friendly/blow/friend_wolf/main
scoreboard players set @e[tag=!Initialized,distance=0,limit=1] Level 15
data modify entity @e[tag=!Initialized,distance=0,limit=1] Tags set from storage tusb_mob: "即時ステータス"."ベース".Tags
tag @e[tag=!Initialized,distance=0,limit=1] remove DelayedData
execute as @e[tag=!Initialized,distance=0,limit=1] run function enemy:spawn/apply_status/act


