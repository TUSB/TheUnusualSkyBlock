##############################
### デバッグ用ダメージ表示
##############################

scoreboard players operation $Damage Global = @s Damage
scoreboard players operation $Digit654 Global = $Damage Global
scoreboard players operation $Digit654 Global /= $100000 Const
execute if score $Digit654 Global matches 0 run scoreboard players reset $Digit654 Global
scoreboard players operation $Digit321 Global = $Damage Global
scoreboard players operation $Digit321 Global /= $100 Const
scoreboard players operation $Digit321 Global %= $1000 Const
scoreboard players reset $Padding3 Global
scoreboard players reset $Padding2 Global
execute if score $Digit321 Global matches ..99 run scoreboard players set $Padding3 Global 0
execute if score $Digit321 Global matches ..9 run scoreboard players set $Padding2 Global 0
scoreboard players operation $Digit-12 Global = $Damage Global
scoreboard players operation $Digit-12 Global %= $100 Const
scoreboard players reset $Padding-1 Global
execute if score $Digit-12 Global matches ..9 run scoreboard players set $Padding-1 Global 0

execute if score $Damage Global matches 100000.. run tellraw @a ["[デバッグ] ",{"selector":"@s"},"に ",[{"score":{"name":"$Digit654","objective":"Global"},"color":"aqua"},",",{"score":{"name":"$Padding3","objective":"Global"}},{"score":{"name":"$Padding2","objective":"Global"}},{"score":{"name":"$Digit321","objective":"Global"}}],[{"text":".","color":"blue"},{"score":{"name":"$Padding-1","objective":"Global"}},{"score":{"name":"$Digit-12","objective":"Global"}}]," ダメージ！"]
execute if score $Damage Global matches ..99999 run tellraw @a ["[デバッグ] ",{"selector":"@s"},"に ",[{"score":{"name":"$Digit321","objective":"Global"},"color":"aqua"}],[{"text":".","color":"blue"},{"score":{"name":"$Padding-1","objective":"Global"}},{"score":{"name":"$Digit-12","objective":"Global"}}]," ダメージ！"]
