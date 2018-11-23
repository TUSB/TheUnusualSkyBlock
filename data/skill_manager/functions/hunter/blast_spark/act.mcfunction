##############################
### ブラストスパーク発動
##############################

scoreboard players set @s BlastSpark 50
execute positioned ~ ~1.52 ~ run kill @e[distance=..5,type=minecraft:arrow,tag=!Initialized,sort=nearest,limit=1]
