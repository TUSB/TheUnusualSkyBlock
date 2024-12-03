#> item:sign/click/inn
##############################
### 宿の印板
##############################

#設置スペースの検知
#scoreboard players set _ _ 0
#execute if blocks ~1 ~ ~-3 ~3 ~ ~3 -1923 3 -75 all if blocks ~ ~ ~1 ~ ~ ~3 -1923 3 -75 all if blocks ~ ~ ~-3 ~ ~ ~-1 -1923 3 -75 all if blocks ~-3 ~ ~-3 ~-1 ~ ~3 -1923 3 -75 all if blocks ~-3 ~1 ~-3 ~3 ~3 ~3 -1923 3 -75 all if blocks ~-3 ~4 ~-2 ~-2 ~4 ~2 -1923 3 -75 all if blocks ~-1 ~4 ~-3 ~1 ~4 ~3 -1923 3 -75 all if blocks ~2 ~4 ~-2 ~3 ~4 ~2 -1923 3 -75 all if blocks ~-3 ~5 ~-1 ~-2 ~5 ~1 -1923 3 -75 all if blocks ~-1 ~5 ~-3 ~-1 ~5 ~3 -1923 3 -75 all if blocks ~ ~5 ~-2 ~ ~5 ~2 -1923 3 -75 all if blocks ~1 ~5 ~-3 ~1 ~5 ~3 -1923 3 -75 all if blocks ~2 ~5 ~-1 ~3 ~5 ~1 -1923 3 -75 all if blocks ~-3 ~6 ~-1 ~-3 ~6 ~1 -1923 3 -75 all if blocks ~-1 ~6 ~-1 ~-1 ~6 ~1 -1923 3 -75 all if blocks ~1 ~6 ~-1 ~1 ~6 ~1 -1923 3 -75 all if blocks ~3 ~6 ~-1 ~3 ~6 ~1 -1923 3 -75 all if blocks ~-3 ~6 ~ ~3 ~6 ~ -1923 3 -75 all run scoreboard players set _ _ 1

#スペース不十分時
#execute if score _ _ matches 0 run tellraw @s {"translate":"スペースが足りない！"}
#execute if score _ _ matches 0 run function makeup:item/sign/inn/failed

#設置
#execute if score _ _ matches 1 run setblock ~ ~ ~ minecraft:air
#execute if score _ _ matches 1 run clone -1923 13 -75 -1917 19 -69 ~-3 ~ ~-3 masked
#execute if score _ _ matches 1 run function makeup:item/sign/inn/success
