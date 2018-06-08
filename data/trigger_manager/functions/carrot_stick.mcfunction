##############################
### 人参棒トリガー
##############################

### 召喚士＜ぽむぽむ花火＞
execute if entity @s[scores={ModeSkill=99997,SkillInterval=..0}] run function skill_manager:summoner/pompom/act

### トリガーリセット
scoreboard players reset @s UseCarrotStick
