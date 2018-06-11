##############################
### 弓トリガー
##############################

### 狩人＜バードストライク＞
execute if entity @s[scores={ModeSkill=99998}] run function skill_manager:hunter/bird_strike/act

### 狩人＜ピアッシングエイム＞
execute if entity @s[scores={PiercingAim=1..}] run function skill_manager:hunter/piercing_aim/apply

### 狩人＜ワイルドフレア＞
execute if entity @s[scores={ModeSkill=99992,SkillInterval=..0}] run function skill_manager:hunter/wild_flare/act

### 狩人＜ステークスファイア＞
execute if entity @s[scores={ModeSkill=99991}] run function skill_manager:hunter/stakes_fire/act

### トリガーリセット
scoreboard players reset @s UseBow
