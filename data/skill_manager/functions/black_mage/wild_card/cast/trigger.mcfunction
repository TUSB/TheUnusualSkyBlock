##############################
### ワイルドカード トリガー
##############################

execute if entity @s[tag=WCVerySmall] run tag @e[tag=Mob,distance=..3.99] add WCTarget
execute if entity @s[tag=WCVerySmall] run tag @e[team=Friendly,gamemode=!creative,gamemode=!spectator,distance=..3.99] add WCTarget
execute if entity @s[tag=WCSmall] run tag @e[tag=Mob,distance=..8] add WCTarget
execute if entity @s[tag=WCSmall] run tag @e[team=Friendly,gamemode=!creative,gamemode=!spectator,distance=..8] add WCTarget
execute if entity @s[tag=WCBig] run tag @e[tag=Mob,distance=..12] add WCTarget
execute if entity @s[tag=WCBig] run tag @e[team=Friendly,gamemode=!creative,gamemode=!spectator,distance=..12] add WCTarget
execute if entity @s[tag=WCVeryBig] run tag @e[tag=Mob,distance=..16] add WCTarget
execute if entity @s[tag=WCVeryBig] run tag @e[team=Friendly,gamemode=!creative,gamemode=!spectator,distance=..16] add WCTarget

execute if entity @s[tag=WCResistance] run function skill_manager:black_mage/wild_card/trigger/resistance/main
execute if entity @s[tag=WCHeal] run function skill_manager:black_mage/wild_card/trigger/heal/main
execute if entity @s[tag=WCDamage] run function skill_manager:black_mage/wild_card/trigger/damage/main

tag @e[tag=WCTarget] remove WCTarget
kill @s

###---演出---Start
playsound minecraft:block.beacon.power_select master @a[distance=..48] ~ ~ ~ 1 2
playsound minecraft:block.end_portal.spawn master @a[distance=..48] ~ ~ ~ 0.5 2
particle minecraft:entity_effect ~ ~0.2 ~ 1 1 1 10000000 100 force @a[tag=ShowParticles]
particle minecraft:witch ~ ~0.1 ~ 1 1 1 1 50 force @a[tag=ShowParticles]
###---演出---End
