##############################
### イベント選択
##############################

execute if entity @s[tag=Explosion] run function enemy_manager:occurrence/explosion/select_level


advancement revoke @s only enemy_manager:occurrence
