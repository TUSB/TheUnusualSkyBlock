##############################
### マジックシールド展開
##############################

scoreboard players remove @s MagicShield 1000

###---演出---Start
playsound minecraft:entity.wither.hurt master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.ender_dragon.hurt master @a[distance=..16] ~ ~ ~ 1 1.4
playsound minecraft:block.beacon.power_select master @a[distance=..16] ~ ~ ~ 1 2
###---演出---End
