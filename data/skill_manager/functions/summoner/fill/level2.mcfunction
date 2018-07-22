##############################
### フィールβ
##############################

function skill_manager:summoner/fill/level1
execute positioned ~2 ~-1 ~2 if block ~ ~ ~ minecraft:white_wool run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:white_wool keep
execute positioned ~2 ~-1 ~-2 if block ~ ~ ~ minecraft:white_wool run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:white_wool keep
execute positioned ~-2 ~-1 ~2 if block ~ ~ ~ minecraft:white_wool run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:white_wool keep
execute positioned ~-2 ~-1 ~-2 if block ~ ~ ~ minecraft:white_wool run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:white_wool keep
execute positioned ~ ~-1 ~2 if block ~ ~ ~ minecraft:white_wool run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:white_wool keep
execute positioned ~ ~-1 ~-2 if block ~ ~ ~ minecraft:white_wool run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:white_wool keep
execute positioned ~2 ~-1 ~ if block ~ ~ ~ minecraft:white_wool run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:white_wool keep
execute positioned ~-2 ~-1 ~ if block ~ ~ ~ minecraft:white_wool run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:white_wool keep
