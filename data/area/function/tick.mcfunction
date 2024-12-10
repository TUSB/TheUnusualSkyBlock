#> area:tick
# -> 1秒処理
execute if score $Ticks Count matches 0 run function area:one_second

### 固定村人 奈落落ち回避
execute as @e[type=villager,tag=!Mob] at @s if entity @s[y=-51,dy=50] run function area:villager_point/tp
