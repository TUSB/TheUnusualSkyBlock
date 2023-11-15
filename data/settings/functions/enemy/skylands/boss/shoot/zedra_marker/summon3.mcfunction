#Function
playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..64] ~ ~ ~ 0.6 1.8
playsound item.trident.throw hostile @a[distance=..64] ~ ~ ~ 1 0.4
playsound minecraft:item.trident.return hostile @a[distance=..64] ~ ~ ~ 1 0
playsound minecraft:entity.witch.throw hostile @a[distance=..64] ~ ~ ~ 1.5 0.5
execute as @e[distance=..1,tag=ZedraBody,sort=nearest,limit=1] run tag @s add NowTarget
execute as @e[distance=..1,tag=NowTarget] run function oh_my_dat:please
execute as @e[distance=..1,tag=NowTarget] run function settings:enemy/global/event/function/rotate_armor/main
execute as @e[distance=..1,tag=NowTarget] run tag @s add Rotating
execute as @e[distance=..1,tag=NowTarget] run tag @s remove NowTarget
function oh_my_dat:please
execute positioned ^-0.2 ^0.9 ^-0.2 rotated ~110 ~45 run function settings:enemy/skylands/boss/shoot/zedra/slash1
execute positioned ^0 ^1 ^0.75 as @a[gamemode=!creative,gamemode=!spectator,distance=..1.5] run tag @s add ZedraLanding2
execute positioned ^0 ^ ^0.75 as @a[gamemode=!creative,gamemode=!spectator,distance=..1.5] run tag @s add ZedraLanding2
data modify storage score_damage: Argument set value {DamageType:[Global]}
execute store result storage score_damage: Argument.Damage int 1.2 run scoreboard players get @s Attack
execute as @a[tag=ZedraLanding] run function settings:enemy/skylands/boss/shoot/zedra/landing1
execute store result storage score_damage: Argument.Damage int 1 run scoreboard players get @s Attack
execute as @a[tag=ZedraLanding2] run function settings:enemy/skylands/boss/shoot/zedra/landing2
