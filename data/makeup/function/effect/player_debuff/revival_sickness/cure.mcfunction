#> makeup:effect/player_debuff/revival_sickness/cure
#
# 復活酔い 回復メッセージ
tellraw @s [{"translate":"%1$sは%2$sから回復した！","color":"green","with":[{"selector":"@s","color":"white"},{"interpret":true,"storage":"effect:","nbt":"BadEffectsName.RevivalSicknesss"}]}]
