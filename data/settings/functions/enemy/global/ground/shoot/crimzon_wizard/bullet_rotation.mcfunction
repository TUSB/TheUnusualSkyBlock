#Function
#親との紐づけ
execute store result score _ _ run scoreboard players get @s ParentID
execute as @e[tag=Shaft_C] run scoreboard players operation @s OhMyDatID -= _ _
execute as @e[tag=Shaft_C,scores={OhMyDatID=0},tag=!NonTarget] run tag @s add NowParent
execute as @e[tag=Shaft_C] run scoreboard players operation @s OhMyDatID += _ _
execute unless entity @e[tag=NowParent] run data modify storage mob_data: Tags append value Garbage
#子との紐づけ
execute store result score _ _ run scoreboard players get @s OhMyDatID
execute as @e[tag=BlustBullet] run scoreboard players operation @s ParentID -= _ _
execute as @e[tag=BlustBullet,scores={ParentID=0},tag=!NonTarget] run tag @s add NowChild
execute as @e[tag=BlustBullet] run scoreboard players operation @s ParentID += _ _
#自分です
tag @s add NowTarget
#自転処理
execute at @e[tag=NowParent] positioned ^ ^ ^1 rotated as @s run tp @s ~ ~ ~ ~10 0
#0-0-0-0-2設置
execute positioned ^ ^ ^-1.2 run function calc:geometry/tp_00002
execute as 0-0-0-0-2 at @e[tag=NowParent] rotated ~ 0 positioned ^ ^ ^1 positioned ~ ~1 ~ facing entity @e[tag=NowParent] feet positioned as @s run tp @s ~ ~ ~ ~ ~
#対称移動
execute as 0-0-0-0-2 at @s positioned ^ ^ ^-1000 facing entity @e[tag=NowTarget] feet positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^-1000 rotated as @e[tag=NowParent] run tp @e[tag=NowChild] ~ ~ ~ ~ 0
#お片付け処理
execute as 0-0-0-0-2 run function calc:geometry/return_marker
execute as @e[tag=NowParent] run tag @s remove NowParent
execute as @e[tag=NowChild] run tag @s remove NowChild
tag @s remove NowTarget
