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
