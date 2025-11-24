#> skill:act/hunter/radar_vision/act0
#
# レーダーヴィジョン発動

# TP用設定
data modify storage skill: RadarVision set value {}
data modify storage skill: RadarVision.Pos set from entity @s Pos
data modify storage skill: RadarVision.Rotation set from entity @s Rotation
data modify storage skill: RadarVision.Dimension set from entity @s Dimension
execute if entity @s[gamemode=adventure] run data modify storage skill: RadarVision.Adventure set value 1b
function #oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RadarVision set from storage skill: RadarVision

# 時間設定
execute if score _ Level matches 1 run scoreboard players set @s RadarVision 60
execute if score _ Level matches 2 run scoreboard players set @s RadarVision 120
execute if score _ Level matches 3 run scoreboard players set @s RadarVision 200
gamemode spectator @s

# 復帰地点をセット(見た目のみ)
summon minecraft:armor_stand ~ ~ ~ {Tags:[Skill,RadarVisionPoint,NativeTask,CooldownRequired],PortalCooldown:240,Marker:1b,Invisible:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:beacon",count:1b}],CustomName:'{"text":"レーダーサイト"}',CustomNameVisible:1b}

# 演出
function makeup:skill/act/hunter/radar_vision/act0
