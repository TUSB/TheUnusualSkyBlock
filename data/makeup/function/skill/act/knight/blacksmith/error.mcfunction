#> makeup:skill/act/knight/blacksmith/error
### 鍛冶エラー

playsound minecraft:block.dispenser.fail player @s ~ ~ ~ 1 1
execute rotated ~ 0 positioned ^ ^1.2 ^1 run particle minecraft:block_marker{block_state:"minecraft:barrier"} ~ ~ ~ 0 0 0 1 0 force
