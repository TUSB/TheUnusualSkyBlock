#> makeup:skill/act/knight/blacksmith/failure
### 鍛冶失敗

playsound minecraft:block.anvil.destroy player @a[distance=..10] ~ ~ ~ 1 0.5
playsound minecraft:block.glass.break player @a[distance=..10] ~ ~ ~ 1 0.5
execute rotated ~ 0 run particle minecraft:item{item:"minecraft:iron_sword"} ^ ^1.2 ^0.8 0 0 0 0.15 29 force
