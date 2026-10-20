
### ふかふかケージ遅延処理
execute if entity @s[tag=SmartMotion] unless entity @e[tag=Cage,distance=..3,sort=nearest,limit=1] at @e[distance=3..,tag=Cage,sort=nearest,limit=1] facing entity @s feet positioned ^ ^ ^3 run function smart_motion:core/tp
execute unless entity @s[tag=SmartMotion] unless entity @e[tag=Cage,distance=..3,sort=nearest,limit=1] at @e[distance=3..,tag=Cage,sort=nearest,limit=1] facing entity @s feet positioned ^ ^ ^3 run tp @s ~ ~ ~
