##############################
### サモンＰ：サーヴァント
##############################

#TODO:スキルの設定
summon minecraft:vindicator ~ ~2.4 ~ {Motion:[0d,-1d,0d],Tags:[NativeTask,CooldownRequired],PortalCooldown:3000,Team:Friendly,Health:120f,ActiveEffects:[{Id:23b,Duration:2147483647,Amplifier:0b,ShowParticles:false},{Id:11b,Amplifier:4b,Duration:50}],HandItems:[{id:"minecraft:iron_axe",Count:1b},{}],HandDropChances:[-1E40f,-1E40f],Attributes:[{Name:"generic.max_health",Base:120d},{Name:"generic.knockback_resistance",Modifiers:[{Amount:15d,UUID:[I;0,0,0,1]},{Amount:20d,UUID:[I;0,0,0,11]},{Amount:100d,UUID:[I;0,0,0,21]}]},{Name:"generic.attack_damage",Base:8d,Modifiers:[{Amount:72d,Operation:0,UUID:[I;0,0,0,1]}]},{Name:"generic.movement_speed",Base:0.4d},{Name:"generic.follow_range",Base:48d}],Johnny:true,CustomName:'{"translate":"フレンドリー"}',CustomNameVisible:true}
execute if score @s SupportSkill matches 62082 as @e[distance=0,tag=!Initialized] at @s run function skill:act/summoner/summon_snow_golem/health_boost
#演出
function makeup:skill/act/summoner/summon_vindicator/act1
