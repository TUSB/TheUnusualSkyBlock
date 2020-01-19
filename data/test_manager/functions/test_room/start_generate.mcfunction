#生成Tick初期化
scoreboard players set $GenerateTick Global 0
#座標AEC召喚
execute unless entity @e[tag=TilePos,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[TilePos],Duration:2100000000}
#初期座標設定
tp @e[tag=TilePos,limit=1] -3793 1 1336
#チェストバックアップ
execute as @e[tag=ChestPos,limit=1] positioned as @s run data modify entity @s ArmorItems[3].tag.Chest1 set from block ~ ~ ~ Items
execute as @e[tag=ChestPos,limit=1] positioned as @s run data modify entity @s ArmorItems[3].tag.Chest2 set from block ~ ~ ~-1 Items
#チェストの空スロットを埋める
execute positioned as @e[tag=ChestPos,limit=1] run loot insert ~ ~ ~ loot test_manager:fill_with_barrier
execute positioned as @e[tag=ChestPos,limit=1] run loot insert ~ ~ ~-1 loot test_manager:fill_with_barrier
