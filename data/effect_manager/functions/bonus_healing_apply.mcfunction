##############################
### 討伐ボーナス回復適用
##############################

### HPボーナス
execute store result score $Tmp Global run data get entity @s ActiveEffects[0].Amplifier
scoreboard players operation $Tmp Global *= $4 Const
scoreboard players add $Tmp Global 20
scoreboard players operation $Tmp Global /= $10 Const
scoreboard players operation @s HealthHealing += $Tmp Global

### MPボーナス
scoreboard players operation $Tmp Global = @s MPMax
scoreboard players operation $Tmp Global /= $10 Const
scoreboard players operation @s MP += $Tmp Global
scoreboard players operation @s MP < @s MPMax
