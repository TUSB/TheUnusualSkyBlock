##############################
### サモンＰ：ウルフ
##############################

summon minecraft:wolf ~ ~ ~ {Motion:[0d,0.5d,0d],Team:Friendly,AbsorptionAmount:200f,ActiveEffects:[{Id:5b,Duration:2147483647,Amplifier:0b,ShowParticles:false},{Id:11b,Amplifier:4b,Duration:50}],Attributes:[{Name:"generic.max_health",Base:40d},{Name:"generic.attack_damage",Base:400d},{Name:"generic.movement_speed",Base:0.4d},{Name:"generic.follow_range",Base:48d}],Passengers:[{id:"minecraft:item",Item:{id:"minecraft:bone",Count:3b}}],CustomName:'{"text":"フレンドリー"}',CustomNameVisible:true}
execute if score _ Level matches 2 as @e[distance=0,tag=!Initialized] at @s run function skill:act/summoner/summon_snow_golem/health_boost
#演出
function makeup:skill/act/summoner/summon_wolf/act1
