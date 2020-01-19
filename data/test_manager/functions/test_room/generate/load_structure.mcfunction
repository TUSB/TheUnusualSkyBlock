#タイルをロード

#高さを取得 Count*3
execute store result score $Height Global run data get block 0 0 0 RecordItem.Count
scoreboard players operation $Height Global *= $3 Const
execute store result entity @s Pos[1] double 1 run scoreboard players get $Height Global

execute positioned as @s run function test_manager:test_room/generate/set_structure
