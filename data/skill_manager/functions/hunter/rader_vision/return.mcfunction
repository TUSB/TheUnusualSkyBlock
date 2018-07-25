##############################
### レーダーヴィジョン復帰
##############################

### 座標移動
scoreboard players operation $RaderVisionPoint ID = @s ID
execute as @e[tag=RaderVisionPoint] if score @s ID = $RaderVisionPoint ID run tag @s add TargetRaderVisionPoint
execute at @e[tag=TargetRaderVisionPoint,limit=1] run tp @s ~ ~ ~
kill @e[tag=TargetRaderVisionPoint,limit=1]

###リセット
scoreboard players reset @s RaderVision
gamemode adventure @s[tag=Adv]
gamemode survival @s[tag=!Adv]

###---演出---Start
execute positioned as @s run particle minecraft:end_rod ~ ~1 ~ 0.1 0.1 0.1 0.1 25 force
execute positioned as @s run playsound minecraft:block.beacon.deactivate master @a[distance=..16] ~ ~ ~ 1 2
###---演出---End