### 落とし床処理

execute align xz positioned ~0.5 ~ ~0.5 run tp @s ~ ~-4 ~

execute at @s unless block ~ ~1 ~ minecraft:warped_wart_block run function makeup:entity/unique_floor/drop_floor
execute at @s if block ~ ~1 ~ minecraft:warped_wart_block positioned ~ ~3 ~ run function entity:unique_floor/drop_floor
 

