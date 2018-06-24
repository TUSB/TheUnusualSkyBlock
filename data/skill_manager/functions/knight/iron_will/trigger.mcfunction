##############################
### アイアンウィル
##############################

###アイアンウィル時function呼び出し
execute as @a[scores={IronWill=1..}] run function skill_manager:knight/iron_will/save

###進捗トリガーリセット
advancement revoke @s only skill_manager:iron_will
