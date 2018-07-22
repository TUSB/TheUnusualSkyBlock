##############################
### ふかふかケージ遅延処理
##############################

execute at @e[distance=3..,tag=Cage,sort=nearest,limit=1] facing entity @s feet positioned ^ ^ ^3 run tp @s ~ ~ ~
tag @s remove Caught
