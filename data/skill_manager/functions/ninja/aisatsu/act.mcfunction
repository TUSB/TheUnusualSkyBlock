##############################
### アイサツ発動
##############################
execute store result score $Aisatsu Global if entity @e[distance=..30,tag=Mob]
execute if score $Aisatsu Global matches 0 run tellraw @a ["ドーモ。",{"selector":"@s"},"です"]
execute if score $Aisatsu Global matches 1.. run tellraw @a ["ドーモ。",{"selector":"@e[distance=..30,tag=Mob,sort=nearest]","color":"red"},"＝サン。",{"selector":"@s"},"です"]
tp @s ~ ~ ~ ~ 45
scoreboard players set @s Aisatsu 0
execute at @e[distance=..30,tag=Mob] run scoreboard players add @s Aisatsu 3
execute if score @s ModeSkill matches 22012 at @e[distance=..30,tag=Mob] run scoreboard players add @s Aisatsu 2

###---演出---Start
execute as @e[distance=..10,tag=Mob] at @s rotated ~-45 ~ run summon minecraft:armor_stand ~ ~ ~ {PortalCooldown:30,Tags:[CooldownRequired,Aisatsu,AisatsuRed],ArmorItems:[{},{},{},{id:"minecraft:red_wool",Count:1b}],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,45f,45f]},Small:true,Invisible:true,Marker:true,NoGravity:true}
execute as @e[distance=10..20,tag=Mob] at @s rotated ~-45 ~ run summon minecraft:armor_stand ~ ~ ~ {PortalCooldown:30,Tags:[CooldownRequired,Aisatsu,AisatsuLPurple],ArmorItems:[{},{},{},{id:"minecraft:magenta_wool",Count:1b}],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,45f,45f]},Small:true,Invisible:true,Marker:true,NoGravity:true}
execute as @e[distance=20..30,tag=Mob] at @s rotated ~-45 ~ run summon minecraft:armor_stand ~ ~ ~ {PortalCooldown:30,Tags:[CooldownRequired,Aisatsu,AisatsuGold],ArmorItems:[{},{},{},{id:"minecraft:yellow_wool",Count:1b}],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,45f,45f]},Small:true,Invisible:true,Marker:true,NoGravity:true}
team join Red @e[tag=AisatsuRed]
team join Light_Purple @e[tag=AisatsuLPurple]
team join Gold @e[tag=AisatsuGold]
effect give @e[tag=Aisatsu] minecraft:glowing 10 0
execute if score $Aisatsu Global matches 1.. run tellraw @s [{"text":"","color":"green"},{"selector":"@s"},"に",{"text":"アイサツ","color":"white","hoverEvent":{"action":"show_text","value":"アイサツした敵の数に応じて、次に使うスキルの消費MPが減少する。","color":"white"}},"の効果！"]
playsound minecraft:entity.villager.yes master @a[distance=..32] ~ ~ ~ 2 1
###---演出---End
