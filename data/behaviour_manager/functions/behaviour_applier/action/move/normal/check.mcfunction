##############################
### ターゲットへ向けての移動分類
##############################

### 通常
execute if entity @s[tag=!Bullet] run function behaviour_manager:behaviour_applier/action/move/normal/mob
### 弾
execute if entity @s[tag=Bullet] run function behaviour_manager:behaviour_applier/action/move/normal/bullet
