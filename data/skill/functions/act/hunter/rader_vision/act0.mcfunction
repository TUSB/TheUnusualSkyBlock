##############################
### レーダーヴィジョン発動
##############################

### TP用設定
data modify storage skill: RaderVision set value {}
data modify storage skill: RaderVision.Pos set from entity @s Pos
data modify storage skill: RaderVision.Rotation set from entity @s Rotation
execute if entity @s[gamemode=adventure] run data modify storage skill: RaderVision.Adventure set value 1b
function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RaderVision set from storage skill: RaderVision
### 時間設定
execute if score _ Level matches 1 run scoreboard players set @s RaderVision 60
execute if score _ Level matches 2 run scoreboard players set @s RaderVision 120
execute if score _ Level matches 3 run scoreboard players set @s RaderVision 200
gamemode spectator @s
### 復帰地点をセット(見た目のみ)
summon minecraft:armor_stand ~ ~ ~ {Tags:[Skill,RaderVisionPoint,NativeTask,CooldownRequired],PortalCooldown:240,Marker:1b,Invisible:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:beacon",Count:1b}],CustomName:'{"text":"レーダーサイト"}',CustomNameVisible:1b}
### 演出
function makeup:skill/act/hunter/rader_vision/act0
