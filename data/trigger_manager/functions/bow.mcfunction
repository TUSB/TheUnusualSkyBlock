##############################
### 弓トリガー
##############################

### 狩人＜バードストライク＞
execute if entity @s[scores={ModeSkill=99998}] run function skill_manager:hunter/bird_strike/act

### 狩人＜ピアッシングエイム＞
execute if entity @s[scores={PiercingAim=1..}] run function skill_manager:hunter/piercing_aim/apply

### トリガーリセット
scoreboard players reset @s UseBow
