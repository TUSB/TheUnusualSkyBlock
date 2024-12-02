#> area:tick
# -> 1秒処理
## 使用するときにコメントアウトを外してください。
execute if score $Ticks Count matches 0 run function area:one_second

### 通常世界脅威島 チェストの上の石は壊れない
execute in area:skylands positioned 39 6 -557 if entity @a[distance=..10] if block 39 7 -556 air if block 39 6 -556 chest run setblock 39 7 -556 infested_deepslate

### 固定村人 奈落落ち回避
execute as @e[type=villager,tag=!Mob] at @s if entity @s[y=-51,dy=50] run function area:villager_point/tp
