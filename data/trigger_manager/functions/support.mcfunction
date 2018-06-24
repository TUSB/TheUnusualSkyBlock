##############################
### サポート発動
##############################

### 介錯
execute if entity @s[scores={SupportSkill=22081..22089}] at @s run function skill_manager:ninja/kaishaku/act

### ダークスワンプ
execute if entity @s[scores={SupportSkill=52071..52079}] at @s run function skill_manager:black_mage/dark_swamp/act

### トリガーリセット
scoreboard players reset @s SupportSkil
scoreboard players reset @s SupportCost
