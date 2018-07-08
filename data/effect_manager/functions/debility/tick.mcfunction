##############################
### 衰弱処理
##############################

###エフェクト付与
effect give @s[tag=Debility,nbt={ActiveEffects:[{Id:19b}]}] minecraft:instant_damage 1 1 true

###進捗トリガーリセット
advancement revoke @s only effect_manager:debility
