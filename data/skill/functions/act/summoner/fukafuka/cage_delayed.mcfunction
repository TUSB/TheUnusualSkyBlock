
### ふかふかケージ遅延処理

execute unless entity @e[tag=Cage,distance=..3,sort=nearest,limit=1] at @e[distance=3..,tag=Cage,sort=nearest,limit=1] facing entity @s feet positioned ^ ^ ^3 run tp @s ~ ~ ~
tag @s remove Caught
