##############################
### バニラデータ読み込み
##############################

### HP取得
execute store result score @s HP run data get entity @s Health 1
### 最大値を現在値と同じに
scoreboard players operation @s MaxHP = @s HP
#scoreboard players operation @s MaxMP = @s MP
### AbsorptionAmountを1000000に設定
execute if entity @s[tag=!NoNaturalDamage] run data merge entity @s {AbsorptionAmount:1000000f}
