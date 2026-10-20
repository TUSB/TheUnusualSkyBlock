##############################
### サモンＰ：ゴーレム
##############################

summon minecraft:iron_golem ~ ~0.8 ~ {Motion:[0d,-0.5d,0d],Tags:[NativeTask,CooldownRequired],PortalCooldown:3000,Team:Friendly,Health:200f,active_effects:[{id:"minecraft:slow_falling",duration:-1,show_particles:false},{id:"minecraft:levitation",duration:18,amplifier:1b,show_particles:true},{id:"minecraft:resistance",amplifier:4b,duration:50}],ArmorItems:[{},{},{id:"minecraft:stick",components:{"minecraft:enchantments":{levels:{"minecraft:thorns":255}}},count:1},{}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],CustomName:"{\"translate\":\"フレンドリー\"}",CustomNameVisible:true,DeathLootTable:"",attributes:[{id:"minecraft:attack_damage",base:10d,modifiers:[{id:"minecraft:00000000-0000-0000-0000-000000000001",amount:55d,operation:"add_value"}]},{id:"minecraft:max_health",base:200d},{id:"minecraft:movement_speed",base:0.4d},{id:"minecraft:follow_range",base:48d}]}
execute if score _ Level matches 2 as @e[distance=0,tag=!Initialized] at @s run function skill:act/summoner/summon_snow_golem/health_boost
#演出
function makeup:skill/act/summoner/summon_iron_golem/act1
