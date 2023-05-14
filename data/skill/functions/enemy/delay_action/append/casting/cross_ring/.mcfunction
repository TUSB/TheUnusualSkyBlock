# 登録 Stageがフレーム数、NextActionがtick表示間隔
data modify storage mob_data: AddingAction set value {Stage:20,NextAction:1}
playsound minecraft:entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 1.5 1.5