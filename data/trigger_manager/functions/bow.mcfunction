##############################
### 弓トリガー
##############################

### 狩人＜バードストライク＞
execute if entity @s[scores={ModeSkill=31031..31039}] unless score @s SkillInterval matches 1.. run function skill_manager:hunter/bird_strike/act

### 狩人＜ピアッシングエイム＞
execute if entity @s[scores={PiercingAim=1..}] run function skill_manager:hunter/piercing_aim/apply

### 狩人＜ワイルドフレア＞
execute if entity @s[scores={ModeSkill=31061..31069}] unless score @s SkillInterval matches 1.. run function skill_manager:hunter/wild_flare/act

### 狩人＜ステークスファイア＞
execute if entity @s[scores={ModeSkill=31011..31019}] unless score @s SkillInterval matches 1.. run function skill_manager:hunter/stakes_fire/act

### トリガーリセット
scoreboard players reset @s UseBow
