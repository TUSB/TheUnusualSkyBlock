##############################
### 雪玉トリガー
##############################

### 忍者＜一閃＞
execute if entity @s[scores={ModeSkill=21041..21049}] run function skill_manager:ninja/issen/act

### トリガーリセット
scoreboard players reset @s UseSnowball
