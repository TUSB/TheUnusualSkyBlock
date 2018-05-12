scoreboard players remove @a[tag=Doom] DoomSecond 1
scoreboard players remove @a[tag=Doom,score_DoomSecond=0] Doom 1
tellraw @a[tag=Doom,score_DoomSecond=0] {"score":{"name":"*","objective":"Doom"},"color":"dark_red","bold":true}
scoreboard players set @a[tag=Doom,score_DoomSecond=0] DoomSecond 3
kill @a[tag=Doom,score_Doom=0]
###後で消す
scoreboard players tag @a[tag=Doom,score_Doom=0] remove Doom
