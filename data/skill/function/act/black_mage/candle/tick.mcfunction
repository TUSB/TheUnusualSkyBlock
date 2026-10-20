
### キャンドル処理

setblock ~ ~ ~ minecraft:lava[level=7] keep
fill ~ ~ ~ ~ ~ ~ minecraft:lava[level=7] replace minecraft:lava
fill ~ ~-1 ~ ~ ~-1 ~ minecraft:air replace minecraft:lava

function makeup:skill/act/black_mage/candle/tick
