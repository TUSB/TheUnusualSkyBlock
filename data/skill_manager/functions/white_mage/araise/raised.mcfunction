##############################
### レイズリスポーン発動
##############################

### 座標移動
scoreboard players operation $RaisePoint ID = @s ID
execute as @e[tag=RaisePoint] if score @s ID = $RaisePoint ID run tag @s add TargetRaisePoint
execute at @e[tag=TargetRaisePoint,limit=1] run tp @s ~ ~ ~
kill @e[tag=TargetRaisePoint,limit=1]

### ディメンション補正
execute if score @s Dimension matches 100..199 at @s in the_nether run tp @s ~ ~ ~
execute if score @s Dimension matches 200..299 at @s in the_end run tp @s ~ ~ ~

###タグ削除
tag @s remove Raise
