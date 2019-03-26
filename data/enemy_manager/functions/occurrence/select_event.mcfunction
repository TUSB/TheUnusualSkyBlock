##############################
### イベント選択
##############################

execute if entity @s[tag=Explosion] run function enemy_manager:occurrence/explosion/select_level
execute if entity @s[tag=InstantDamage] run function enemy_manager:occurrence/explosion/select_level
execute if entity @s[tag=EffectCancel] run function enemy_manager:occurrence/effect_cancel/select_effect

advancement revoke @s only enemy_manager:occurrence
