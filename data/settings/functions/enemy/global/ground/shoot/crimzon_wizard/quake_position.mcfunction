#Function
#タグ付け
tag @s add NowTarget
#アマスタ設置
summon armor_stand ^ ^ ^12 {Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["NowTarget","PointP"]}
execute at @e[tag=PointP] facing entity @s feet positioned ^ ^ ^6 facing entity @e[tag=NowTarget] feet positioned ^ ^ ^3 facing entity @e[tag=NowTarget] feet positioned ^ ^ ^1.5 facing entity @e[tag=NowTarget] feet positioned ^ ^ ^0.75 run function settings:enemy/global/ground/shoot/crimzon_wizard/quake_summon
kill @e[type=armor_stand,tag=PointP]
tag @s remove NowTarget
