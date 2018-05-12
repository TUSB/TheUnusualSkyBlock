###砂バグ対策
scoreboard players tag @e[type=minecraft:falling_block,tag=SpawnChecked] add Garbage {FallDistance:0f}
###メインチェック
execute 0-0-1-0-1 ~ ~ ~ /execute @e[type=!minecraft:player,tag=!SpawnChecked] ~ ~ ~ /function usb:SpawnCheck/Main
###チェック終了同期
execute 0-0-1-0-1 ~ ~ ~ /execute @s[score_Conditional_min=1] ~ ~ ~ /scoreboard players tag @e[type=!minecraft:player,tag=!SpawnChecked] add SpawnChecked
