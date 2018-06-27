##############################
### 討伐ボーナス回復適用
##############################

### HPボーナス
execute store result score $MaxHP Global run data get entity @s Attributes[0].Modifiers[0].Amount
scoreboard players add $MaxHP Global 20
scoreboard players operation $MaxHP Global /= $10 Const
scoreboard players operation @s HealthHealing += $MaxHP Global

### MPボーナス
scoreboard players operation $MaxMP Global = @s MPMax
scoreboard players operation $MaxMP Global /= $10 Const
scoreboard players operation @s MPConsumption -= $MaxMP Global

###---演出---Start


###---演出---End
