##############################
### 人参棒トリガー
##############################

### 召喚士＜ぽむぽむ花火＞
execute if entity @s[scores={ModeSkill=61081..61089,SkillInterval=..0}] run function skill_manager:summoner/pompom/act

### 白魔導士＜セイクリッドピラー＞
execute if entity @s[scores={ModeSkill=51041..51049,SkillInterval=..0}] run function skill_manager:white_mage/sacred_pillar/act

### トリガーリセット
scoreboard players reset @s UseCarrotStick
