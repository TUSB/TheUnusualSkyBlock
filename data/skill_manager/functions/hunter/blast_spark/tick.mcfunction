##############################
### ブラストスパーク継続
##############################

scoreboard players remove @s BlastSpark 1

###弾召喚
summon minecraft:trident 1 1 1 {Tags:[Initializing,BlastSpark,CooldownRequired],PortalCooldown:10,NoGravity:true,Silent:true,DealtDamage:true}
###モーションを計算する
execute positioned ^ ^ ^-0.1 run tp @e[tag=Initializing,limit=1] ~ ~1.52 ~
execute as @e[tag=Initializing,limit=1] positioned ~ ~1.52 ~ run function calc_manager:get/direction1

#function calc_manager:substitute/2-1
###モーション量を補正する
scoreboard players set $M Global 250
function calc_manager:multiply/pos1

###モーションを適用する
execute as @e[tag=Initializing,limit=1] at @s run function calc_manager:set/motion1

execute if score @s ModeSkill matches 31051 run scoreboard players set $Damage Global 40000
execute if score @s ModeSkill matches 31052 run scoreboard players set $Damage Global 120000
execute if score @s ModeSkill matches 31053 run scoreboard players set $Damage Global 200000
function calc_manager:apply_damage_modifier

scoreboard players operation @e[tag=Initializing,limit=1] SkillAttribute = $Damage Global

tag @e[tag=Initializing] remove Initializing
