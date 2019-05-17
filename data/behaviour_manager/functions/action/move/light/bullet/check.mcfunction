##############################
### ターゲットへ向けての移動
##############################

### 順番が一定以下なら行動実行
execute if score @s QueueID matches ..20 run function behaviour_manager:action/move/light/bullet/apply
