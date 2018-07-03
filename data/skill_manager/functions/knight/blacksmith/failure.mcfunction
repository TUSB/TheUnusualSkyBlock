##############################
### 鍛冶失敗
##############################

###ロスト処理
replaceitem entity @s weapon.mainhand minecraft:air

###---演出---Start
playsound minecraft:block.anvil.destroy master @a[distance=..10] ~ ~ ~ 1 0.5
playsound minecraft:block.glass.break master @a[distance=..10] ~ ~ ~ 1 0.5
execute rotated ~ 0 run particle minecraft:item minecraft:iron_sword ^ ^1.2 ^0.8 0 0 0 0.15 29 force
###---演出---End
