##############################
### ダッシュトリガー
##############################

###真空斬り待機
# execute if score @s ModeSkill matches 11041..11049 run function skill_manager:knight/aerial_slash/ready

### アクティブ条件更新
scoreboard players operation @s SprintOneCm *= $2 Const
scoreboard players operation @s SprintOneCm /= $3 Const
