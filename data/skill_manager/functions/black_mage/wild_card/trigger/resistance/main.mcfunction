##############################
### ワイルドカード 防御力を高める
##############################

execute if entity @s[tag=WCVeryWeak,tag=WCVeryShort] run effect give @e[tag=WCTarget] minecraft:resistance 1 1 false
execute if entity @s[tag=WCVeryWeak,tag=WCShort] run effect give @e[tag=WCTarget] minecraft:resistance 10 1 false
execute if entity @s[tag=WCVeryWeak,tag=WCLong] run effect give @e[tag=WCTarget] minecraft:resistance 20 1 false
execute if entity @s[tag=WCVeryWeak,tag=WCVeryLong] run effect give @e[tag=WCTarget] minecraft:resistance 40 1 false
execute if entity @s[tag=WCWeak,tag=WCVeryShort] run effect give @e[tag=WCTarget] minecraft:resistance 1 2 false
execute if entity @s[tag=WCWeak,tag=WCShort] run effect give @e[tag=WCTarget] minecraft:resistance 10 2 false
execute if entity @s[tag=WCWeak,tag=WCLong] run effect give @e[tag=WCTarget] minecraft:resistance 20 2 false
execute if entity @s[tag=WCWeak,tag=WCVeryLong] run effect give @e[tag=WCTarget] minecraft:resistance 40 2 false
execute if entity @s[tag=WCStrong,tag=WCVeryShort] run effect give @e[tag=WCTarget] minecraft:resistance 1 3 false
execute if entity @s[tag=WCStrong,tag=WCShort] run effect give @e[tag=WCTarget] minecraft:resistance 10 3 false
execute if entity @s[tag=WCStrong,tag=WCLong] run effect give @e[tag=WCTarget] minecraft:resistance 20 3 false
execute if entity @s[tag=WCStrong,tag=WCVeryLong] run effect give @e[tag=WCTarget] minecraft:resistance 40 3 false
execute if entity @s[tag=WCVeryStrong,tag=WCVeryShort] run effect give @e[tag=WCTarget] minecraft:resistance 1 4 false
execute if entity @s[tag=WCVeryStrong,tag=WCShort] run effect give @e[tag=WCTarget] minecraft:resistance 10 4 false
execute if entity @s[tag=WCVeryStrong,tag=WCLong] run effect give @e[tag=WCTarget] minecraft:resistance 20 4 false
execute if entity @s[tag=WCVeryStrong,tag=WCVeryLong] run effect give @e[tag=WCTarget] minecraft:resistance 40 4 false

###---演出---Start
playsound minecraft:block.anvil.use master @a[tag=WCTarget] ~ ~ ~ 1 1.2
###---演出---End
