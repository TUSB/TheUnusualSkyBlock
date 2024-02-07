bossbar set skill:burst players @a
execute store result score _ _ if entity @a
scoreboard players set _ Calc 60
scoreboard players operation _ Calc *= _ _
scoreboard players add _ Calc 420
scoreboard players set _ _ 3
execute store result bossbar skill:burst max run scoreboard players operation _ Calc *= _ _
