##############################
### モードスキルをスニーク範囲化するかどうか
##############################

### 白魔導士＜ケアル＞
scoreboard players operation @s[scores={ActiveSkill=41011..41019}] ActiveCost *= $3 Const

### 召喚士＜サモンＢ：エンダーチェスト＞
scoreboard players operation @s[scores={ActiveSkill=61101..61109}] ActiveCost *= $3 Const
