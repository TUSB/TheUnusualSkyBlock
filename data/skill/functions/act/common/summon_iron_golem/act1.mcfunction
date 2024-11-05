##############################
### サモンＰ：ゴーレム
##############################

summon minecraft:iron_golem ~ ~0.8 ~ {Motion:[0d,-0.5d,0d],Tags:[NativeTask,CooldownRequired],PortalCooldown:3000,Team:Friendly,Health:200f,active_effects:[{id:"minecraft:slow_falling",duration:-1,amplifier:0b,show_particles:false},{id:"minecraft:levitation",duration:18,amplifier:1b,show_particles:true},{id:"minecraft:resistance",amplifier:4b,duration:50}],Attributes:[{Name:"generic.attack_damage",Base:10d,Modifiers:[{Amount:55d,Operation:0,UUID:[I;0,0,0,1]}]},{Name:"generic.max_health",Base:200d},{Name:"generic.movement_speed",Base:0.4d},{Name:"generic.follow_range",Base:48d}],ArmorItems:[{},{},{id:"minecraft:stick",Count:1b,tag:{Enchantments:[{id:"minecraft:thorns",lvl:255s}]}},{}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],CustomName:'{"translate":"フレンドリー"}',CustomNameVisible:true,DeathLootTable:"minecraft:empty"}
execute if score _ Level matches 2 as @e[distance=0,tag=!Initialized] at @s run function skill:act/summoner/summon_snow_golem/health_boost
#演出
function makeup:skill/act/summoner/summon_iron_golem/act1
