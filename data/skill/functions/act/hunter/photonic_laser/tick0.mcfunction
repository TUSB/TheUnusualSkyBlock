##############################
### フォトニックレーザー毎tick処理
##############################

#インターバルリセット
scoreboard players set @s Interval 2

#マーカー設置
execute facing ^ ^ ^-1 run function calc:geometry/tp_00000
tag @s add PhotonicMarker
tag 0-0-0-0-0 add PhotonicMarker

#演出用カウント
scoreboard players add @s Calc 1
scoreboard players set @s[scores={Calc=18}] Calc 0

#2m間隔16地点で実行
execute at @e[tag=PhotonicMarker,distance=..0.01,limit=2] positioned ^ ^ ^8 rotated as @e[tag=PhotonicMarker,distance=..8.01,limit=2] positioned ^ ^ ^4 rotated as @e[tag=PhotonicMarker,distance=..12.01,limit=2] positioned ^ ^ ^2 rotated as @e[tag=PhotonicMarker,distance=..14.01,limit=2] positioned ^ ^ ^1 run function makeup:skill/act/hunter/photonic_laser/tick1

#マーカー解除
tag @s remove PhotonicMarker
tag 0-0-0-0-0 remove PhotonicMarker
execute as 0-0-0-0-0 run function calc:geometry/return_marker
