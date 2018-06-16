##############################
### からくり近接接近ターゲット選択
##############################

###ターゲット探索
execute store result score $SeekFlag PuppetScore run tag @e[tag=TargetOption,sort=nearest,limit=1] add ActiveTarget
tp @s ~ ~ ~ facing entity @e[tag=ActiveTarget,limit=1]
tag @e[distance=..2.5,tag=ActiveTarget] remove ActiveTarget
