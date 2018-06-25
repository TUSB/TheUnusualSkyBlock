##############################
### 一閃発動
##############################

###既に一閃があれば消す
scoreboard players operation $Issen ID = @s ID
execute as @e[tag=Issen] if score @s ID = $Issen ID run kill @s
###新たに一閃を発生させる
execute positioned ~ ~1.52 ~ as @e[distance=..5,type=snowball,tag=!Initialized,limit=1] at @s run function calc_manager:get/motion1
summon minecraft:villager ~ ~ ~ {NoGravity:true,PortalCooldown:30,Tags:[Issen,Initializing],Team:NoCollision,Silent:true,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false}]}
scoreboard players operation @e[tag=Initializing,limit=1] ID = @s ID
###一閃速度設定
execute if score @s ModeSkill matches 21041 run scoreboard players set $M Global 70
execute if score @s ModeSkill matches 21042 run scoreboard players set $M Global 90
execute if score @s ModeSkill matches 21043 run scoreboard players set $M Global 110
execute if score @s ModeSkill matches 21044 run scoreboard players set $M Global 130
function calc_manager:multiply/pos1
execute as @e[tag=Initializing,limit=1] at @s run function calc_manager:set/motion1
###初期化タグ削除
tag @e[tag=Initializing,limit=1] remove Initializing
###一閃tick数設定
scoreboard players set @s Issen 30
###ラグ削減&位置固定
effect give @s minecraft:slow_falling 2 0 true
