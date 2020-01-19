#ブロック削除
fill ~ 0 ~ ~15 127 ~15 minecraft:air
fill ~ 128 ~ ~15 255 ~15 minecraft:air
kill @e[type=item,y=0,dx=15,dy=255,dz=15]
#タイルをロード
execute if score $GenerateTick Global matches 0..26 positioned as @e[tag=ChestPos,limit=1] run data modify block 0 0 0 RecordItem set from block ~ ~ ~ Items[0]
execute if score $GenerateTick Global matches 27..53 positioned as @e[tag=ChestPos,limit=1] run data modify block 0 0 0 RecordItem set from block ~ ~ ~-1 Items[0]
execute if data block 0 0 0 RecordItem.tag.BlockEntityTag.name run function test_manager:test_room/generate/load_structure
#チェストのアイテム削除
execute if score $GenerateTick Global matches 0..26 positioned as @e[tag=ChestPos,limit=1] run data remove block ~ ~ ~ Items[0]
execute if score $GenerateTick Global matches 27..53 positioned as @e[tag=ChestPos,limit=1] run data remove block ~ ~ ~-1 Items[0]
#次の座標にtp
scoreboard players operation $GenerateTickMod Global = $GenerateTick Global
scoreboard players operation $GenerateTickMod Global %= $9 Const
execute if score $GenerateTickMod Global matches 0..7 run tp @s ~ ~ ~-16
execute if score $GenerateTickMod Global matches 8 run tp @s ~-16 ~ ~128
#生成tick増加
scoreboard players add $GenerateTick Global 1
execute if score $GenerateTick Global matches 54.. run function test_manager:test_room/quit_generate
