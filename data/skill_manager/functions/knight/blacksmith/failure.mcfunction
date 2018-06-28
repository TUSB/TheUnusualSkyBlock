##############################
### 鍛冶失敗
##############################

###ロスト処理
replaceitem entity @s weapon.mainhand minecraft:air

###---演出---Start
playsound minecraft:block.anvil.destroy master @a[distance=..10] ~ ~ ~ 1 0.5
###---演出---End
