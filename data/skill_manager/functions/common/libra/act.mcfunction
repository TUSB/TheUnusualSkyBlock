##############################
### ライブラ発動
##############################

summon minecraft:snowball 1 1 1 {NoGravity:true,Tags:[Initializing,Libra,Rapid]}
execute positioned ~ ~1.52 ~ run tp @e[tag=Initializing,limit=1] ^ ^ ^-0.2

execute as @e[tag=Initializing,limit=1] positioned ~ ~1.52 ~ run function calc_manager:get/direction1
scoreboard players set $M Global 1000
function calc_manager:multiply/pos1
execute as @e[tag=Initializing,limit=1] run function calc_manager:set/motion1

scoreboard players operation @e[tag=Initializing,limit=1] ProjectileSkill = @s ModeSkill
tag @e[tag=Initializing,limit=1] remove Initializing

###---演出---Start
playsound minecraft:block.conduit.attack.target master @p ~ ~ ~ 1 1.78
###---演出---End
