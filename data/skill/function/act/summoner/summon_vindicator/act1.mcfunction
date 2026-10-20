##############################
### サモンＰ：サーヴァント
##############################

#TODO:スキルの設定
summon minecraft:vindicator ~ ~2.4 ~ {Motion:[0d,-1d,0d],Tags:[NativeTask,CooldownRequired],PortalCooldown:3000,Team:Friendly,Health:120f,active_effects:[{id:"minecraft:saturation",duration:-1,show_particles:false},{id:"minecraft:resistance",amplifier:4b,duration:50}],HandItems:[{id:"minecraft:iron_axe",count:1},{}],HandDropChances:[-1E40f,-1E40f],Johnny:true,CustomName:"{\"translate\":\"フレンドリー\"}",CustomNameVisible:true,attributes:[{id:"minecraft:max_health",base:120d},{id:"minecraft:knockback_resistance",modifiers:[{id:"minecraft:00000000-0000-0000-0000-000000000001",amount:15d,operation:"add_value"},{id:"minecraft:00000000-0000-0000-0000-00000000000b",amount:20d,operation:"add_value"},{id:"minecraft:00000000-0000-0000-0000-000000000015",amount:100d,operation:"add_value"}]},{id:"minecraft:attack_damage",base:8d,modifiers:[{id:"minecraft:00000000-0000-0000-0000-000000000001",amount:72d,operation:"add_value"}]},{id:"minecraft:movement_speed",base:0.4d},{id:"minecraft:follow_range",base:48d}]}
execute if score @s SupportSkill matches 62082 as @e[distance=0,tag=!Initialized] at @s run function skill:act/summoner/summon_snow_golem/health_boost
#演出
function makeup:skill/act/summoner/summon_vindicator/act1
