##############################
### フィールγ
##############################

function skill_manager:summoner/fill/level2
execute positioned ~3 ~-1 ~3 if block ~ ~ ~ minecraft:white_wool run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:white_wool keep
execute positioned ~3 ~-1 ~-3 if block ~ ~ ~ minecraft:white_wool run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:white_wool keep
execute positioned ~-3 ~-1 ~3 if block ~ ~ ~ minecraft:white_wool run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:white_wool keep
execute positioned ~-3 ~-1 ~-3 if block ~ ~ ~ minecraft:white_wool run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:white_wool keep
execute positioned ~ ~-1 ~3 if block ~ ~ ~ minecraft:white_wool run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:white_wool keep
execute positioned ~ ~-1 ~-3 if block ~ ~ ~ minecraft:white_wool run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:white_wool keep
execute positioned ~3 ~-1 ~ if block ~ ~ ~ minecraft:white_wool run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:white_wool keep
execute positioned ~-3 ~-1 ~ if block ~ ~ ~ minecraft:white_wool run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:white_wool keep
