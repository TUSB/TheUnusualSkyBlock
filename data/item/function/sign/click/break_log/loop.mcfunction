#> item:sign/click/break_log/loop
execute at @e[type=item,nbt={Age:1s}] if block ~ ~1 ~ #minecraft:logs run schedule function item:sign/click/break_log/loop 1t
execute at @e[type=item,nbt={Age:1s}] positioned ~ ~1 ~ if block ~ ~ ~ #minecraft:logs run fill ~ ~ ~ ~ ~ ~ air destroy
