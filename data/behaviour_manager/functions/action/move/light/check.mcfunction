##############################
### ターゲットへ向けての移動分類
##############################

### 通常
execute if entity @s[tag=!Bullet] run function behaviour_manager:action/move/light/mob/check
### 弾
execute if entity @s[tag=Bullet] run function behaviour_manager:action/move/light/bullet/check
