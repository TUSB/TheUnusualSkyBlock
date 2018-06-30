##############################
### ブラストスパーク継続
##############################

scoreboard players remove @s BlastSpark 1

###チャンクロード
summon minecraft:arrow ~ 0 ~ {XTile:1,YTile:1,ZTile:1,NoGravity:true,Color:-1,Tags:[Garbage,Initialized]}
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

execute if score @s ModeSkill matches 0.. run scoreboard players operation @e[tag=Initializing,limit=1] SkillAttribute = $10 Const

tag @e[tag=Initializing] remove Initializing


#execute positioned ^ ^ ^-0.3 run summon minecraft:snowball ~ ~1.52 ~ {Tags:[Initializing,CooldownRequired],PortalCooldown:10,NoGravity:true,direction:[0d,0d,0d]}

###モーションを適用する
#execute as @e[tag=Initializing,limit=1] at @s run function calc_manager:set/direction2

#tag @e[tag=Initializing] remove Initializing
