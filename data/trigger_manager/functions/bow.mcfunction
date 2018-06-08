##############################
### 弓トリガー
##############################

### 狩人＜バードストライク＞
execute if entity @s[scores={ModeSkill=99998}] run function skill_manager:hunter/bird_strike/act

### トリガーリセット
scoreboard players reset @s UseSnowball
