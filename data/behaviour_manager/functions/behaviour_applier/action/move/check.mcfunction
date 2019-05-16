##############################
### ターゲットへ向けての移動分類
##############################

### 通常
execute if entity @s[tag=!Light] run function behaviour_manager:behaviour_applier/action/move/normal/check
### 軽量
execute if entity @s[tag=Light] run function behaviour_manager:behaviour_applier/action/move/light/check
