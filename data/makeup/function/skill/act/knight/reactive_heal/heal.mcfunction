#> makeup:skill/act/knight/reactive_heal/heal
# playerだとダメージ音と競合するためmasterで再生
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 3 2
particle minecraft:heart ~ ~1 ~ 0.2 1 0.2 0 15 force
