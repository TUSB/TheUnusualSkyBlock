##############################
### レーダーヴィジョン発動
##############################

### TP用設定
summon minecraft:armor_stand ~ ~ ~ {Tags:[RaderVisionPoint,TickingTask,Initializing,CooldownRequired],PortalCooldown:240,NoGravity:true,Marker:true,Invisible:true,Small:true,ArmorItems:[{},{},{},{id:"minecraft:beacon",Count:1b}],CustomName:"[\"レーダーサイト\"]",CustomNameVisible:true}
tp @e[tag=Initializing,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=Initializing,limit=1] ID = @s ID
tag @e[tag=Initializing,limit=1] remove Initializing

### チャンクロード用設定
summon minecraft:arrow 1.0 2.0 3.0 {Tags:[Initializing,CooldownRequired],PortalCooldown:240,NoGravity:true}
execute store result entity @e[tag=Initializing,limit=1] xTile int 1 run data get entity @s Pos[0]
execute store result entity @e[tag=Initializing,limit=1] yTile int 1 run data get entity @s Pos[1]
execute store result entity @e[tag=Initializing,limit=1] zTile int 1 run data get entity @s Pos[2]
tag @e[tag=Initializing,limit=1] remove Initializing

### 時間設定
execute if score @s SupportSkill matches 32061 run scoreboard players operation @s RaderVision > $60 Const
execute if score @s SupportSkill matches 32062 run scoreboard players operation @s RaderVision > $120 Const
execute if score @s SupportSkill matches 32063 run scoreboard players operation @s RaderVision > $200 Const
gamemode spectator @s

###---演出---Start
particle minecraft:end_rod ~ ~1 ~ 0.1 0.1 0.1 0.1 25 force
playsound minecraft:entity.zombie_villager.converted master @a[distance=..16] ~ ~ ~ 2 2
###---演出---End
