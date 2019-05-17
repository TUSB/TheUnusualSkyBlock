##############################
### UUID乱数取得
##############################

### 次の乱数があればそれを返す
scoreboard players operation $UUID Random = $__UUID Random
scoreboard players set $__UUID Random 0

### UUID乱数更新
execute unless score $UUID Random matches 1.. run function calc_manager:random/__uuid
