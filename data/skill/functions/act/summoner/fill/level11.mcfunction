##############################
### フィール１１
#############################

function skill:act/summoner/fill/level7
execute positioned ~4 ~-1 ~4 if block ~ ~ ~ minecraft:white_wool run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:white_wool keep
execute positioned ~4 ~-1 ~-4 if block ~ ~ ~ minecraft:white_wool run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:white_wool keep
execute positioned ~-4 ~-1 ~4 if block ~ ~ ~ minecraft:white_wool run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:white_wool keep
execute positioned ~-4 ~-1 ~-4 if block ~ ~ ~ minecraft:white_wool run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:white_wool keep
execute positioned ~ ~-1 ~4 if block ~ ~ ~ minecraft:white_wool run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:white_wool keep
execute positioned ~ ~-1 ~-4 if block ~ ~ ~ minecraft:white_wool run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:white_wool keep
execute positioned ~4 ~-1 ~ if block ~ ~ ~ minecraft:white_wool run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:white_wool keep
execute positioned ~-4 ~-1 ~ if block ~ ~ ~ minecraft:white_wool run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:white_wool keep
