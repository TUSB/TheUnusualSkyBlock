##############################
### ピクミン投げる
##############################

execute rotated 0 ~ positioned ^ ^ ^1 run function calc_manager:get/direction1
scoreboard players operation $DeltaY Local = $Z1 Global

execute positioned ^ ^ ^1 run function calc_manager:get/direction1
scoreboard players operation $Y1 Global += $DeltaY Local
scoreboard players operation $DeltaY Local /= $32 Const

execute anchored eyes positioned ^ ^ ^ anchored feet run summon minecraft:villager ~ ~ ~ {NoGravity:true,Tags:[Initializing,Pikmin,ParabolicEntity,NativeTask],Age:-32768s}

scoreboard players operation $Y1 Global *= $85 Const
scoreboard players operation $Y1 Global /= $100 Const
scoreboard players operation $DeltaY Local *= $85 Const
scoreboard players operation $DeltaY Local /= $100 Const

scoreboard players operation @e[tag=Initializing,limit=1] ParabolicX = $X1 Global
scoreboard players operation @e[tag=Initializing,limit=1] ParabolicY = $Y1 Global
scoreboard players operation @e[tag=Initializing,limit=1] ParabolicZ = $Z1 Global
scoreboard players operation @e[tag=Initializing,limit=1] ParabolicD = $DeltaY Local
scoreboard players set @e[tag=Initializing,limit=1] ParabolicT 0

tag @e[tag=Initializing,limit=1] remove Initializing

playsound minecraft:entity.villager.yes master @a[distance=..16] ~ ~ ~ 2 2
