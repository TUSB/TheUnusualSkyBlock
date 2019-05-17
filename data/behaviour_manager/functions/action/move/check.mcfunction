##############################
### ターゲットへ向けての移動分類
##############################

### 順番付与
execute if score @s QueueID matches ..0 store result score @s QueueID run scoreboard players add $_ QueueID 1

### 通常
execute if entity @s[tag=!LightMove] run function behaviour_manager:action/move/normal/check
### 軽量
execute if entity @s[tag=LightMove] run function behaviour_manager:action/move/light/check
