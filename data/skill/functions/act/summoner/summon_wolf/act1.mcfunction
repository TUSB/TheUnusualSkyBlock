##############################
### サモンＰ：ウルフ
##############################

summon minecraft:wolf ~ ~ ~ {Motion:[0d,0.5d,0d],Team:Friendly,AbsorptionAmount:200f,ActiveEffects:[{Id:5b,Duration:2147483647,Amplifier:0b,ShowParticles:false},{Id:11b,Amplifier:4b,Duration:50}],Attributes:[{Name:"generic.max_health",Base:40d},{Name:"generic.attack_damage",Base:4d,Modifiers:[{Amount:396d,Operation:0,UUID:[I;0,0,0,1]}]},{Name:"generic.movement_speed",Base:0.4d},{Name:"generic.follow_range",Base:48d}],CustomName:'{"translate":"フレンドリー"}',CustomNameVisible:true}
execute if score _ Level matches 2 as @e[distance=0,tag=!Initialized] at @s run function skill:act/summoner/summon_snow_golem/health_boost
#Ownerを設定
data modify entity @e[tag=!Initialized,distance=0,limit=1] Owner set from entity @s UUID
#CollarColorをランダムに設定
execute store result score _ Calc run function calc:random
scoreboard players set _ _ 16
execute store result entity @e[tag=!Initialized,distance=0,limit=1] CollarColor byte 1 run scoreboard players operation _ Calc %= _ _
#演出
function makeup:skill/act/summoner/summon_wolf/act1
