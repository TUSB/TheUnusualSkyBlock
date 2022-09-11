#時間を朝にする
scoreboard players set _ _ 1
execute as @a at @s unless block ~ ~ ~ #beds run scoreboard players set _ _ 0
execute if score _ _ matches 1 run time set 0
