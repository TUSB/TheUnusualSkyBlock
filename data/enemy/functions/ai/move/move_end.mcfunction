#X
execute store result score _ Calc run data get entity @e[tag=MoveFront,limit=1] Pos[0] 100
execute store result score _ _ run data get entity @e[tag=MoveSide,limit=1] Pos[0] 100
scoreboard players operation _ Calc += _ _
execute store result entity @s Motion[0] double 0.01 run scoreboard players get _ Calc
#Y
execute store result score _ Calc run data get entity @e[tag=MoveFront,limit=1] Pos[1] 100
execute store result score _ _ run data get entity @e[tag=MoveSide,limit=1] Pos[1] 100
scoreboard players operation _ Calc += _ _
execute store result entity @s Motion[1] double 0.02 run scoreboard players get _ Calc
#Z
execute store result score _ Calc run data get entity @e[tag=MoveFront,limit=1] Pos[2] 100
execute store result score _ _ run data get entity @e[tag=MoveSide,limit=1] Pos[2] 100
scoreboard players operation _ Calc += _ _
execute store result entity @s Motion[2] double 0.01 run scoreboard players get _ Calc

kill @e[tag=MoveFront]
kill @e[tag=MoveSide]