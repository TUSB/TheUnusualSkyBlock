##############################
### サモンＰ：ゴーレム
##############################

summon minecraft:iron_golem ~ ~0.8 ~ {Motion:[0d,-0.5d,0d],Tags:[NativeTask,CooldownRequired],PortalCooldown:3000,Team:Friendly,Health:200f,ActiveEffects:[{Id:28,Duration:-1,Amplifier:0b,ShowParticles:false},{Id:25,Duration:18,Amplifier:1b,ShowParticles:true},{Id:11,Amplifier:4b,Duration:50}],Attributes:[{Name:"generic.attack_damage",Base:10d,Modifiers:[{Amount:55d,Operation:0,UUID:[I;0,0,0,1]}]},{Name:"generic.max_health",Base:200d},{Name:"generic.movement_speed",Base:0.4d},{Name:"generic.follow_range",Base:48d}],ArmorItems:[{},{},{id:"minecraft:stick",Count:1b,tag:{Enchantments:[{id:"minecraft:thorns",lvl:255s}]}},{}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],CustomName:'{"translate":"フレンドリー"}',CustomNameVisible:true,DeathLootTable:"minecraft:empty"}
execute if score _ Level matches 2 as @e[distance=0,tag=!Initialized] at @s run function skill:act/summoner/summon_snow_golem/health_boost
#演出
function makeup:skill/act/summoner/summon_iron_golem/act1