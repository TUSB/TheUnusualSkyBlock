
### 死の宣告 処理

#宣告カウント進行
scoreboard players remove @s DoomCount 1
scoreboard players operation _ DoomCount = @s DoomCount
scoreboard players set _ Calc 3
scoreboard players operation _ DoomCount /= _ Calc
scoreboard players operation _ _ = @s DoomCount
scoreboard players operation _ _ %= _ Calc

execute if score _ _ matches 0 run function makeup:effects/doom/proceed

execute if score _ _ matches 0 if score _ DoomCount matches 0 run function effects:doom/death
