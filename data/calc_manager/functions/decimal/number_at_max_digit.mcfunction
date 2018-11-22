##############################
### 最上位の数字
##############################

scoreboard players operation $Number Global = $Decimal Global
execute if score $Number Global matches 10.. run scoreboard players operation $Number Global /= $2 Const
