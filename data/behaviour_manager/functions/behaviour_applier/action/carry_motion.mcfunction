##############################
### モーション持ち越し
##############################

### モーション保持
execute store result entity 0-0-0-0-20 Pos[0] double 0.01 run data get entity @s Motion[0] 9000
execute store result entity 0-0-0-0-20 Pos[1] double 0.01 run data get entity @s Motion[1] 9000
execute store result entity 0-0-0-0-20 Pos[2] double 0.01 run data get entity @s Motion[2] 9000
execute at 0-0-0-0-20 positioned ~0.5 ~0.5 ~0.5 align xyz run tp 0-0-0-0-20 ~ ~ ~ ~ ~
