##############################
### 人参棒トリガー
##############################

### 連続使用回数更新
scoreboard players add @s CarrotContinue 1
scoreboard players set @s CarrotTick 5

### 召喚士＜ぽむぽむ花火＞
execute if entity @s[scores={ModeSkill=61081..61089,SkillInterval=..0}] run function skill_manager:summoner/pompom/act

### 召喚士＜コールＣアタック＞
execute if entity @s[scores={ModeSkill=61071..61079,SkillInterval=..0}] rotated ~ 0 positioned ^ ^1 ^3.5 run function skill_manager:summoner/call_crystal/summon/random
### 召喚士＜コールＣエンハンス＞
execute if entity @s[scores={ModeSkill=61091..61099,SkillInterval=..0}] rotated ~ 0 positioned ^ ^1 ^3.5 run function skill_manager:summoner/call_crystal/summon/random

### 白魔導士＜セイクリッドピラー＞
execute if entity @s[scores={ModeSkill=41041..41049,SkillInterval=..0}] run function skill_manager:white_mage/sacred_pillar/act

### 召喚士＜ぷちブラック＞
execute if entity @s[scores={ModeSkill=61111..61119,SkillInterval=..0}] run function skill_manager:summoner/petit_black/act

### トリガーリセット
scoreboard players reset @s UseCarrotStick
