bossbar set skill:burst players @a
execute store result score _ _ if entity @a
scoreboard players remove _ _ 1
scoreboard players set _ Calc 250
scoreboard players operation _ Calc *= _ _
scoreboard players add _ Calc 2000
scoreboard players set _ _ 3
execute store result bossbar skill:burst max run scoreboard players operation _ Calc *= _ _
