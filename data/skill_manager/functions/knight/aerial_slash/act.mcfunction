##############################
### 真空切り発動
##############################

scoreboard players reset @s SprintOneCm

###花火の設定をする
execute positioned ^ ^ ^-0.25 run summon minecraft:arrow ~ ~1.52 ~ {damage:0d,NoGravity:true,Tags:[Projectile,Initializing,Rapid]}

execute store result score $Dtarget Global run data get entity @e[tag=Initializing,limit=1] Pos[0] 1000
execute store result score $Dsource Global run data get entity @s Pos[0] 1000
scoreboard players operation $Dtarget Global -= $Dsource Global
execute store result entity @e[tag=Initializing,limit=1] Motion[0] double -0.01 run scoreboard players get $Dtarget Global

execute store result score $Dtarget Global run data get entity @e[tag=Initializing,limit=1] Pos[1] 1000
execute store result score $Dsource Global run data get entity @s Pos[1] 1000
scoreboard players operation $Dtarget Global -= $Dsource Global
scoreboard players remove $Dtarget Global 1520
execute store result entity @e[tag=Initializing,limit=1] Motion[1] double -0.01 run scoreboard players get $Dtarget Global

execute store result score $Dtarget Global run data get entity @e[tag=Initializing,limit=1] Pos[2] 1000
execute store result score $Dsource Global run data get entity @s Pos[2] 1000
scoreboard players operation $Dtarget Global -= $Dsource Global
execute store result entity @e[tag=Initializing,limit=1] Motion[2] double -0.01 run scoreboard players get $Dtarget Global

scoreboard players operation @e[tag=Initializing,limit=1] ProjectileSkill = @s ModeSkill

tag @e[tag=Initializing,limit=1] remove Initializing
