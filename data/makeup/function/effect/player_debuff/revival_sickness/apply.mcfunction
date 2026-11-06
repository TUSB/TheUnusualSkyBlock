#> makeup:effect/player_debuff/revival_sickness/apply
#
# 復活酔い 付与メッセージ
tellraw @s [{"translate":"%1$sは%2$sにかかった！","color":"red","with":[{"selector":"@s","color":"white"},{"interpret":true,"storage":"effect:","nbt":"BadEffectsName.RevivalSicknesss"}]}]
