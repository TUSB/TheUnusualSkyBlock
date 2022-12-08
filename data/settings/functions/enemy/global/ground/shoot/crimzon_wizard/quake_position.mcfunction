#Function
#タグ付け
tag @s add NowTarget
execute positioned ^ ^ ^12 facing entity @s feet run function calc:geometry/tp_00002
tag 0-0-0-0-2 add NowTarget
#位置指定処理
execute at 0-0-0-0-2 facing entity @s feet positioned ^ ^ ^6 facing entity @e[tag=NowTarget] feet positioned ^ ^ ^3 facing entity @e[tag=NowTarget] feet positioned ^ ^ ^1.5 facing entity @e[tag=NowTarget] feet positioned ^ ^ ^0.75 run function settings:enemy/global/ground/shoot/crimzon_wizard/quake_summon
tag 0-0-0-0-2 remove NowTarget
tag @s remove NowTarget
execute as 0-0-0-0-2 run function calc:geometry/return_marker
