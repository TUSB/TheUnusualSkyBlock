##############################
### 自然ダメージ算出
##############################

### 自然ダメージ算出
execute store result score @s NaturalDamage run data get entity @s AbsorptionAmount 1
scoreboard players remove @s NaturalDamage 1000000
data merge entity @s {AbsorptionAmount:1000000f}

### ダメージに加算しておく
scoreboard players operation @s Damage -= @s NaturalDamage
