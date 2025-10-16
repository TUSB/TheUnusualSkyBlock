#> player:trigger/kill
scoreboard players set @s MP 0
execute in area:skylands run spawnpoint @s -75 14 -619
# data modify storage entity: damage set value {unreasonable:99999,deathcause:'[{"translate":"%1$sは祈りを捧げた。","with":[{"selector":"@s"}]}]'}
# function entity:damage/apply/
## ダメージシステムでkillする？
kill @s
scoreboard players enable @s kill
scoreboard players set @s kill 0
