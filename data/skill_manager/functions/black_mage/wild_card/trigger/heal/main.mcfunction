##############################
### ワイルドカード 回復する
##############################

#Friendly
execute if entity @s[tag=WCVeryWeak,tag=WCVeryShort] run effect give @e[tag=WCTarget,team=Friendly] minecraft:regeneration 5 2 false
execute if entity @s[tag=WCVeryWeak,tag=WCShort] run effect give @e[tag=WCTarget,team=Friendly] minecraft:regeneration 10 2 false
execute if entity @s[tag=WCVeryWeak,tag=WCLong] run effect give @e[tag=WCTarget,team=Friendly] minecraft:regeneration 20 2 false
execute if entity @s[tag=WCVeryWeak,tag=WCVeryLong] run effect give @e[tag=WCTarget,team=Friendly] minecraft:regeneration 40 2 false
execute if entity @s[tag=WCWeak,tag=WCVeryShort] run effect give @e[tag=WCTarget,team=Friendly] minecraft:regeneration 5 3 false
execute if entity @s[tag=WCWeak,tag=WCShort] run effect give @e[tag=WCTarget,team=Friendly] minecraft:regeneration 10 3 false
execute if entity @s[tag=WCWeak,tag=WCLong] run effect give @e[tag=WCTarget,team=Friendly] minecraft:regeneration 20 3 false
execute if entity @s[tag=WCWeak,tag=WCVeryLong] run effect give @e[tag=WCTarget,team=Friendly] minecraft:regeneration 40 3 false
execute if entity @s[tag=WCStrong,tag=WCVeryShort] run effect give @e[tag=WCTarget,team=Friendly] minecraft:regeneration 5 4 false
execute if entity @s[tag=WCStrong,tag=WCShort] run effect give @e[tag=WCTarget,team=Friendly] minecraft:regeneration 10 4 false
execute if entity @s[tag=WCStrong,tag=WCLong] run effect give @e[tag=WCTarget,team=Friendly] minecraft:regeneration 20 4 false
execute if entity @s[tag=WCStrong,tag=WCVeryLong] run effect give @e[tag=WCTarget,team=Friendly] minecraft:regeneration 40 4 false
execute if entity @s[tag=WCVeryStrong,tag=WCVeryShort] run effect give @e[tag=WCTarget,team=Friendly] minecraft:regeneration 5 5 false
execute if entity @s[tag=WCVeryStrong,tag=WCShort] run effect give @e[tag=WCTarget,team=Friendly] minecraft:regeneration 10 5 false
execute if entity @s[tag=WCVeryStrong,tag=WCLong] run effect give @e[tag=WCTarget,team=Friendly] minecraft:regeneration 20 5 false
execute if entity @s[tag=WCVeryStrong,tag=WCVeryLong] run effect give @e[tag=WCTarget,team=Friendly] minecraft:regeneration 40 5 false
#Mob
execute if entity @s[tag=WCVeryWeak] run scoreboard players set $Heal Global 5000
execute if entity @s[tag=WCWeak] run scoreboard players set $Heal Global 10000
execute if entity @s[tag=WCStrong] run scoreboard players set $Heal Global 50000
execute if entity @s[tag=WCVeryStrong] run scoreboard players set $Heal Global 100000
execute if entity @s[tag=WCVeryShort] run scoreboard players operation $Heal Global *= $1 Const
execute if entity @s[tag=WCShort] run scoreboard players operation $Heal Global *= $10 Const
execute if entity @s[tag=WCLong] run scoreboard players operation $Heal Global *= $20 Const
execute if entity @s[tag=WCVeryLong] run scoreboard players operation $Heal Global *= $40 Const

execute as @e[tag=WCTarget,tag=Mob] run function skill_manager:black_mage/wild_card/trigger/heal/apply

###---演出---Start
playsound minecraft:entity.player.levelup master @a[tag=WCTarget] ~ ~ ~ 1 1.7
###---演出---End
