##############################
### MPウェイト更新
##############################

scoreboard players operation $MPHealAmount Global = @s ManaRefresh
scoreboard players operation $MPHealAmount Global %= $10 Const
scoreboard players add $MPHealAmount Global 1

### 0でMP回復
scoreboard players operation @s MPConsumption -= $MPHealAmount Global

### MPウェイトリセット
scoreboard players add @s MPHealingWait 2500
