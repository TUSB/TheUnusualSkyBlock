#> block:unique_floor/drop_floor
### 落とし床処理

scoreboard players set _ _ 0
execute if block ~ ~-4 ~ #block:no_collision if block ~ ~-5 ~ #block:no_collision run scoreboard players add _ _ 1
execute if block ~ ~-3 ~ minecraft:warped_wart_block run scoreboard players add _ _ 1
execute if block ~ ~-1 ~ #block:unbreakable run scoreboard players set _ _ 0
execute if block ~ ~-3 ~ #block:unbreakable run scoreboard players set _ _ 0

execute if score _ _ matches 1.. unless block ~ ~-3 ~ minecraft:warped_wart_block align xz positioned ~0.5 ~ ~0.5 run tp @s ~ ~-5 ~
execute if score _ _ matches 1.. unless block ~ ~-3 ~ minecraft:warped_wart_block at @s run function makeup:entity/unique_floor/drop_floor
execute if score _ _ matches 1.. if block ~ ~-3 ~ minecraft:warped_wart_block positioned ~ ~-1 ~ run function entity:unique_floor/drop_floor
