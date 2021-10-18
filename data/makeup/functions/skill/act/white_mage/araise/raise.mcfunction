
tellraw @a [{"translate":"%1$sに%2$sの効果！","color":"green","with":[{"selector":"@s"},{"translate":"レイズ","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"リスポーン時に死亡した場所に復活する。","color":"white"}}}]}]
playsound minecraft:entity.wither.death master @a[distance=..16] ~ ~ ~ 0.4 2
playsound minecraft:block.beacon.ambient master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:block.beacon.ambient master @a[distance=..16] ~ ~ ~ 1 2
