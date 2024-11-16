#> makeup:job/change/failed
playsound minecraft:block.chest.locked player @a ~ ~ ~ 1 1
execute rotated ~ 0 positioned ^ ^1.2 ^1 run particle minecraft:block_marker{block_state:{Name:"barrier"}} ~ ~ ~ 0 0 0 1 0 force
