#> item:sign/click/teleport
##############################
### 転移の印版
##############################

function makeup:item/sign/teleport/before

execute positioned as @a[sort=nearest,limit=1] run spreadplayers ~ ~ 0 1 under 318 false @s

execute at @s run function makeup:item/sign/teleport/after
