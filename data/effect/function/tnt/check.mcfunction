#> effect:tnt/check
### トント チェック

scoreboard players remove @s TntCount 10
scoreboard players operation _ TntCount = @s TntCount
scoreboard players set _ _ 10
scoreboard players operation _ TntCount /= _ _

function makeup:effect/tnt/check

execute if score @s TntCount matches ..9 run function effect:tnt/ignite
