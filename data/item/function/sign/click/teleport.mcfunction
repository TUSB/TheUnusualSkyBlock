#> item:sign/click/teleport
##############################
### 転移の印版
##############################

function makeup:item/sign/teleport/before

execute positioned as @s run spreadplayers ~ ~ 0 1 false @s

execute at @s run function makeup:item/sign/teleport/after
