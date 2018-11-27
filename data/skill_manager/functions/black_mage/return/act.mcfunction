##############################
### ルーラ発動
##############################

tellraw @s [{"selector":"@s"},{"text":"はルーラを唱えた！"}]

#頭上ブロック確認
execute store success score $Return Global if block ~ 255 ~ minecraft:air if blocks ~ ~2 ~ ~ 255 ~ ~ ~1 ~ masked
execute if score $Return Global matches 0 run tellraw @a {"text":"* 頭上が遮られていたため、発動できなかった！"}
execute if score $Return Global matches 1 run tellraw @a [{"selector":"@a[distance=..10,scores={Job=1..},gamemode=!spectator]","color":"green"},{"text":"にルーラの効果がかかった。","color":"green"}]
execute if score $Return Global matches 1 as @a[distance=..10,scores={Job=1..},gamemode=!spectator] run function skill_manager:black_mage/return/warp

###---演出---Start
execute if score $Return Global matches 0 run playsound minecraft:block.beacon.deactivate master @a[distance=..16] ~ ~ ~ 1 2
particle minecraft:witch ~ ~8 ~ 0.2 7 0.2 0 50 force @a[tag=ShowParticles]
###---演出---End
