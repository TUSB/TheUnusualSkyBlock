##############################
### チェインアロー発動
##############################

scoreboard players set $Damage Global 40000
execute if score @s ModeSkill matches 31023 run scoreboard players set $Damage Global 50000
execute if score @s ModeSkill matches 31024 run scoreboard players set $Damage Global 60000

function calc_manager:apply_damage_modifier

scoreboard players operation @e[distance=..5,type=minecraft:arrow,tag=!Initialized,sort=nearest,limit=1] ProjectileSkill = @s ModeSkill
scoreboard players operation @e[distance=..5,type=minecraft:arrow,tag=!Initialized,sort=nearest,limit=1] SkillAttribute = $Damage Global

###---演出---Start
playsound minecraft:entity.wolf.shake master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:item.trident.hit_ground master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:item.trident.throw master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.dolphin.death master @a[distance=..16] ~ ~ ~ 0.3 1
###---演出---End
