##############################
### ワイルドカード ダメージを与える
##############################

execute if entity @s[tag=WCVeryWeak,tag=WCVeryShort] run effect give @e[tag=WCTarget,team=Friendly] minecraft:instant_damage 10 0 false
execute if entity @s[tag=WCVeryWeak,tag=WCShort] run effect give @e[tag=WCTarget,team=Friendly] minecraft:instant_damage 20 0 false
execute if entity @s[tag=WCVeryWeak,tag=WCLong] run effect give @e[tag=WCTarget,team=Friendly] minecraft:instant_damage 40 0 false
execute if entity @s[tag=WCVeryWeak,tag=WCVeryLong] run effect give @e[tag=WCTarget,team=Friendly] minecraft:instant_damage 80 0 false
execute if entity @s[tag=WCWeak,tag=WCVeryShort] run effect give @e[tag=WCTarget,team=Friendly] minecraft:instant_damage 10 1 false
execute if entity @s[tag=WCWeak,tag=WCShort] run effect give @e[tag=WCTarget,team=Friendly] minecraft:instant_damage 20 1 false
execute if entity @s[tag=WCWeak,tag=WCLong] run effect give @e[tag=WCTarget,team=Friendly] minecraft:instant_damage 40 1 false
execute if entity @s[tag=WCWeak,tag=WCVeryLong] run effect give @e[tag=WCTarget,team=Friendly] minecraft:instant_damage 80 1 false
execute if entity @s[tag=WCStrong,tag=WCVeryShort] run effect give @e[tag=WCTarget,team=Friendly] minecraft:instant_damage 10 3 false
execute if entity @s[tag=WCStrong,tag=WCShort] run effect give @e[tag=WCTarget,team=Friendly] minecraft:instant_damage 20 3 false
execute if entity @s[tag=WCStrong,tag=WCLong] run effect give @e[tag=WCTarget,team=Friendly] minecraft:instant_damage 40 3 false
execute if entity @s[tag=WCStrong,tag=WCVeryLong] run effect give @e[tag=WCTarget,team=Friendly] minecraft:instant_damage 80 3 false
execute if entity @s[tag=WCVeryStrong,tag=WCVeryShort] run effect give @e[tag=WCTarget,team=Friendly] minecraft:instant_damage 10 4 false
execute if entity @s[tag=WCVeryStrong,tag=WCShort] run effect give @e[tag=WCTarget,team=Friendly] minecraft:instant_damage 20 4 false
execute if entity @s[tag=WCVeryStrong,tag=WCLong] run effect give @e[tag=WCTarget,team=Friendly] minecraft:instant_damage 40 4 false
execute if entity @s[tag=WCVeryStrong,tag=WCVeryLong] run effect give @e[tag=WCTarget,team=Friendly] minecraft:instant_damage 80 4 false
#Mob
execute if entity @s[tag=WCVeryWeak] run scoreboard players set $Damage Global 5000
execute if entity @s[tag=WCWeak] run scoreboard players set $Damage Global 10000
execute if entity @s[tag=WCStrong] run scoreboard players set $Damage Global 50000
execute if entity @s[tag=WCVeryStrong] run scoreboard players set $Damage Global 100000
execute if entity @s[tag=WCVeryShort] run scoreboard players operation $Damage Global *= $1 Const
execute if entity @s[tag=WCShort] run scoreboard players operation $Damage Global *= $10 Const
execute if entity @s[tag=WCLong] run scoreboard players operation $Damage Global *= $20 Const
execute if entity @s[tag=WCVeryLong] run scoreboard players operation $Damage Global *= $40 Const

scoreboard players operation @e[tag=WCTarget,tag=Mob] Damage > $Damage Global

###---演出---Start
playsound minecraft:entity.wither.hurt master @a[tag=WCTarget] ~ ~ ~ 1 0
###---演出---End
