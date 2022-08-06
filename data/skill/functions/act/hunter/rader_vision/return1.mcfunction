##############################
### レーダーヴィジョン復帰
##############################

data modify entity @s {} merge from storage skill: RaderVision
tp @a[distance=0,limit=1] @s
execute positioned as @s run kill @e[tag=RaderVisionPoint,distance=..0.01]
