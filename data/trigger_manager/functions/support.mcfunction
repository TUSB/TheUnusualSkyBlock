##############################
### サポート発動
##############################

### アイアンウィル
execute if entity @s[scores={SupportSkill=12021..12029}] at @s run function skill_manager:knight/iron_will/act

### 介錯
execute if entity @s[scores={SupportSkill=22081..22089}] at @s run function skill_manager:ninja/kaishaku/act

### ダークスワンプ
execute if entity @s[scores={SupportSkill=52071..52079}] at @s run function skill_manager:black_mage/dark_swamp/act

### ピアッシングエイム
execute if entity @s[scores={SupportSkill=32071..32079}] at @s run function skill_manager:hunter/piercing_aim/act

### トリガーリセット
scoreboard players reset @s SupportSkil
scoreboard players reset @s SupportCost
