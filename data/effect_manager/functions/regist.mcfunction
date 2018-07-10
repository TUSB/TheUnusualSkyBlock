##############################
### 状態異常耐性減少
##############################

scoreboard players remove @s RegistEffects 1
scoreboard players operation @s RegistEffects > @s RegistMin
scoreboard players operation @s RegistEffects < $150 Const
