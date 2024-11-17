#> player:trigger/sneak_frequency
#スニーク頻度
#スニークすると+10 毎Tick-1

# バースト
execute if score @s SneakFrequency matches 15 store result score _ _ run bossbar get skill:burst max
execute if score @s SneakFrequency matches 15 run scoreboard players set _ Calc 3
execute if score @s SneakFrequency matches 15 run scoreboard players operation _ _ /= _ Calc
execute if entity @s[scores={Age=1..},predicate=entity:player] if score @s SneakFrequency matches 15 if score $World Burst > _ _ anchored eyes positioned ^ ^-0.85 ^5 run function skill:burst/command/show

#設定表示
execute if score @s SneakFrequency matches 20.. run function main:game_menu/show
execute if score @s SneakFrequency matches 20.. run scoreboard players set @s SneakFrequency 1

scoreboard players remove @s SneakFrequency 1
