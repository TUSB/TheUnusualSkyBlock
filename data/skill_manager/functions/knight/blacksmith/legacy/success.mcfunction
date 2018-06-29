##############################
### 鍛冶成功
##############################

###ダメージ値回復
execute store result entity @s SelectedItem.tag.AttributeModifiers[0].Amount double 1 run scoreboard players get $LegacyDurability Global

###---演出---Start
playsound minecraft:block.anvil.use master @a[distance=..10] ~ ~ ~ 1 0.5
###---演出---End
