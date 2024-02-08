#Function
#サウンド
playsound minecraft:item.trident.return hostile @a[distance=..32] ~ ~ ~ 2 0 0.1
#Rotation[0]をランダムに設定
function calc:set/random_rotation
data modify entity @s Rotation[1] set value 0f
#OhMyDatIDによる紐づけを行って位置調整
execute store result score _ _ run scoreboard players get @s ParentID
execute as @e[tag=BlackGrudge_C,distance=..8] run scoreboard players operation @s OhMyDatID -= _ _
execute as @e[tag=BlackGrudge_C,distance=..8,scores={OhMyDatID=0}] run tag @s add NowTarget
execute as @e[tag=BlackGrudge_C,distance=..8] run scoreboard players operation @s OhMyDatID += _ _
execute unless entity @e[tag=NowTarget,distance=..8] run data modify storage mob_data: Tags append value Garbage
execute positioned as @e[tag=NowTarget,distance=..8] positioned ^ ^ ^3 facing entity @e[tag=NowTarget,distance=..8] feet run tp @s ^ ^ ^ ~ 0
tag @e[tag=NowTarget,distance=..8] remove NowTarget
