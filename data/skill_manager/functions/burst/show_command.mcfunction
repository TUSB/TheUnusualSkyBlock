##############################
### バーストコマンド表示
##############################

### スロット取得
execute store result score $Slot Global run data get entity @s SelectedItemSlot
scoreboard players add $Slot Global 1

### コマンドの最上位数値を取得
scoreboard players operation $Number Global = @s BurstCommand
scoreboard players operation $Number Global %= $10 Const

### 最上位と同じであれば
execute if score $Number Global = $Slot Global run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 2
execute if score $Number Global = $Slot Global run scoreboard players operation @s BurstCommand /= $10 Const
execute if score $Number Global = $Slot Global run scoreboard players set @s BurstInputTimer 40

### 左右反転させた値の朱徳
scoreboard players operation $Input Global = @s BurstCommand
scoreboard players set $Output Global 0
function skill_manager:burst/get_score_to_show
execute if score $Output Global matches 0 run scoreboard players reset $Output Global

### 表示
title @s times 0 30 10
title @s subtitle {"score":{"name":"$Output","objective":"Global"}}
title @s title ""

### 0ならバーストブレイク！！
execute if score @s BurstCommand matches 0 run function skill_manager:burst/break

### 時間経過
scoreboard players remove @s BurstInputTimer 1
execute if score @s BurstInputTimer matches 0 run function skill_manager:burst/reset
