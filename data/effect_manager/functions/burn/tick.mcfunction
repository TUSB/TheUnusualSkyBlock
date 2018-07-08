##############################
### やけど処理
##############################

###エフェクト付与
effect give @s[tag=Burn] minecraft:instant_damage 1 1 true

###進捗トリガーリセット
advancement revoke @s only effect_manager:burn
