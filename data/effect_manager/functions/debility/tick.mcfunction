##############################
### 衰弱(病気)処理
##############################

###エフェクト付与
effect give @s[scores={VirusCount=0..}] minecraft:instant_damage 1 1 true

###進捗トリガーリセット
advancement revoke @s only effect_manager:debility
