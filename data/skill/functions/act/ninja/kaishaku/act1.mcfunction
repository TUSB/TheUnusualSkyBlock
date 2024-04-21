
#Level2のときは1000tick + 10000で区別
scoreboard players set _ _ 167
execute if score _ Level matches 2 run scoreboard players set _ _ 10333

scoreboard players operation @a[distance=0.1..16] Kaishaku = _ _
