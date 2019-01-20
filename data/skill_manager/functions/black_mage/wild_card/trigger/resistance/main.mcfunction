##############################
### ワイルドカード 防御力を高める
##############################

execute if entity @s[tag=WCVeryWeak,tag=WCVeryShort] run effect give @e[tag=WCTarget] minecraft:resistance 15 1 false
execute if entity @s[tag=WCVeryWeak,tag=WCShort] run effect give @e[tag=WCTarget] minecraft:resistance 30 1 false
execute if entity @s[tag=WCVeryWeak,tag=WCLong] run effect give @e[tag=WCTarget] minecraft:resistance 60 1 false
execute if entity @s[tag=WCVeryWeak,tag=WCVeryLong] run effect give @e[tag=WCTarget] minecraft:resistance 120 1 false
execute if entity @s[tag=WCWeak,tag=WCVeryShort] run effect give @e[tag=WCTarget] minecraft:resistance 15 2 false
execute if entity @s[tag=WCWeak,tag=WCShort] run effect give @e[tag=WCTarget] minecraft:resistance 30 2 false
execute if entity @s[tag=WCWeak,tag=WCLong] run effect give @e[tag=WCTarget] minecraft:resistance 60 2 false
execute if entity @s[tag=WCWeak,tag=WCVeryLong] run effect give @e[tag=WCTarget] minecraft:resistance 120 2 false
execute if entity @s[tag=WCStrong,tag=WCVeryShort] run effect give @e[tag=WCTarget] minecraft:resistance 15 3 false
execute if entity @s[tag=WCStrong,tag=WCShort] run effect give @e[tag=WCTarget] minecraft:resistance 30 3 false
execute if entity @s[tag=WCStrong,tag=WCLong] run effect give @e[tag=WCTarget] minecraft:resistance 60 3 false
execute if entity @s[tag=WCStrong,tag=WCVeryLong] run effect give @e[tag=WCTarget] minecraft:resistance 120 3 false
execute if entity @s[tag=WCVeryStrong,tag=WCVeryShort] run effect give @e[tag=WCTarget] minecraft:resistance 15 4 false
execute if entity @s[tag=WCVeryStrong,tag=WCShort] run effect give @e[tag=WCTarget] minecraft:resistance 30 4 false
execute if entity @s[tag=WCVeryStrong,tag=WCLong] run effect give @e[tag=WCTarget] minecraft:resistance 60 4 false
execute if entity @s[tag=WCVeryStrong,tag=WCVeryLong] run effect give @e[tag=WCTarget] minecraft:resistance 120 4 false

###---演出---Start
playsound minecraft:block.anvil.use master @a[tag=WCTarget] ~ ~ ~ 1 1.2
###---演出---End
