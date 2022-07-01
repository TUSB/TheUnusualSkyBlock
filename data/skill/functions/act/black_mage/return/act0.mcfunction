
### ルーラ発動

tellraw @s [{"translate":"%1$sはルーラを唱えた！","with":[{"selector":"@s"}]}]

#頭上ブロック確認
scoreboard players set _ _ 0
fill ~ 255 ~ ~ 255 ~ air replace light
execute store success score _ _ if block ~ 255 ~ minecraft:air if blocks ~ ~2 ~ ~ 255 ~ ~ ~1 ~ masked
fill ~ 255 ~ ~ 255 ~ light[level=0] replace air
execute if score _ _ matches 0 run tellraw @a {"translate":"* 頭上が遮られていたため、発動できなかった！"}
execute if score _ _ matches 1 run tellraw @a [{"translate":"%1$sにルーラの効果がかかった。","color":"green","with":[{"selector":"@a[distance=..10,scores={Job=1..},gamemode=!spectator]","color":"green"}]}]
execute if score _ _ matches 1 as @a[distance=..10,scores={Job=1..},gamemode=!spectator] run function skill:act/black_mage/return/warp

function makeup:skill/act/black_mage/return/act0
