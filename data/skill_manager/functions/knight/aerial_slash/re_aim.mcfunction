##############################
### 真空斬りリエイム
##############################

### ターゲット捕捉
scoreboard players operation $Id Global = @s ID
execute as @e[distance=..16,tag=Mob] if score @s ID = $Id Global run tag @s add Target

###モーション計算
execute anchored eyes at @e[distance=..16,tag=Target,limit=1] run function calc_manager:get/direction1

###モーション量を補正
scoreboard players set $M Global 250
function calc_manager:multiply/pos1

###モーションを適用
execute if entity @e[distance=..16,tag=Target,limit=1] run function calc_manager:set/motion1

###ターゲット解放
tag @e[distance=..16,tag=Target,limit=1] remove Target

###タイマーリセット
scoreboard players set @s DecrementTimer 5
