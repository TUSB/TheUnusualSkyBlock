##############################
### モブの自然ダメージ更新
##############################

### 自然ダメージ計算
execute store result score $CurrentHP Global run data get entity @s AbsorptionAmount 100
scoreboard players operation @s LastNaturalDmg = @s PreviousMobHP
scoreboard players operation @s LastNaturalDmg -= $CurrentHP Global
