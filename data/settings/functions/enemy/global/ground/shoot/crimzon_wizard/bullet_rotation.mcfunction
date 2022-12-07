#Function
#親との紐づけ
execute store result score _ _ run scoreboard players get @s ParentID
execute as @e[tag=Shaft_C,distance=..16] run scoreboard players operation @s OhMyDatID -= _ _
execute as @e[tag=Shaft_C,distance=..16,scores={OhMyDatID=0}] run tag @s add NowParent
execute as @e[tag=Shaft_C,distance=..16] run scoreboard players operation @s OhMyDatID += _ _
execute unless entity @e[tag=NowParent] run data modify storage mob_data: Tags append value Garbage
#子との紐づけ
execute store result score _ _ run scoreboard players get @s OhMyDatID
execute as @e[tag=BlustBullet,distance=..16] run scoreboard players operation @s ParentID -= _ _
execute as @e[tag=BlustBullet,distance=..16,scores={ParentID=0}] run tag @s add NowChild
execute as @e[tag=BlustBullet,distance=..16] run scoreboard players operation @s ParentID += _ _
#自分です
tag @s add NowTarget
#自転処理
execute at @e[tag=NowParent] positioned ^ ^ ^1 rotated as @s run tp @s ~ ~ ~ ~10 0
#アマスタ設置
summon armor_stand ^ ^ ^-1.2 {Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["PointP"]}
execute as @e[tag=PointP] at @e[tag=NowParent] rotated ~ 0 positioned ^ ^ ^1 positioned ~ ~1 ~ facing entity @e[tag=NowParent] feet positioned as @s run tp @s ~ ~ ~ ~ ~
#対称移動
execute as @e[tag=PointP] at @s positioned ^ ^ ^-1000 facing entity @e[tag=NowTarget] feet positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^-1000 rotated as @e[tag=NowParent] run tp @e[tag=NowChild] ~ ~ ~ ~ 0
#お片付け処理
kill @e[type=armor_stand,tag=PointP]
execute as @e[tag=NowParent] run tag @s remove NowParent
execute as @e[tag=NowChild] run tag @s remove NowChild
tag @s remove NowTarget
