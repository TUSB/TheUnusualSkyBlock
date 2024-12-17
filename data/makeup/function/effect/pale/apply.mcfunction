#> makeup:effect/pale/apply
###デバフ付与メッセージ
scoreboard players operation _ _ = @s PaleLevel
scoreboard players set _ Calc 9
scoreboard players operation _ _ < _ Calc
scoreboard players set _ Calc 10
scoreboard players operation _ _ *= _ Calc

tellraw @s [{"translate":"%1$sは%2$sにより、最大体力が%3$s%%減少した！！","color":"red","with":[{"selector":"@s","color":"white"},{"interpret":true,"storage":"effects:","nbt":"BadEffectsName.Pale"},{"score":{"name":"_","objective":"_"},"color":"white"}]}]
