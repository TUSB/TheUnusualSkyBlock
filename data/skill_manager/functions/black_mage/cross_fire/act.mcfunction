##############################
### クロスファイア発動
##############################

###槍召喚
execute positioned ^ ^ ^-2.5 run summon minecraft:trident ~ ~301.52 ~ {Invulnerable:true,Silent:true,DealtDamage:true,Tags:[CrossFire,Initializing]}
execute as @e[tag=Initializing,limit=1] positioned ^ ^ ^-2.5 run tp @s ~ ~1.52 ~
###モーション取得
execute as @e[tag=Initializing,limit=1] positioned ~ ~1.52 ~ run function calc_manager:get/direction1
###モーション補正
scoreboard players set $M Global 180
function calc_manager:multiply/pos1
###モーション適用
execute as @e[tag=Initializing,limit=1] at @s run function calc_manager:set/motion1
###飛翔物スキル設定
scoreboard players operation @e[tag=Initializing,limit=1] ProjectileSkill = @s ModeSkill

###初期化タグ削除
tag @e[tag=Initializing,limit=1] remove Initializing
