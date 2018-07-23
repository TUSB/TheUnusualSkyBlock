##############################
### ぽむぽむ花火発動
##############################

###花火の設定をする
execute positioned ^ ^ ^-0.25 run summon minecraft:snowball ~ ~1.52 ~ {NoGravity:true,PortalCooldown:7,Tags:[CooldownRequired,PomPom,Initializing]}
###座標取得
execute as @e[tag=Initializing,limit=1] positioned ~ ~1.52 ~ run function calc_manager:get/direction1
###モーション量補正
scoreboard players set $M Global 250
function calc_manager:multiply/pos1
###モーション適用
execute as @e[tag=Initializing,limit=1] at @s run function calc_manager:set/motion1

###飛翔物スキル付与
scoreboard players operation @e[tag=Initializing,limit=1] ProjectileSkill = @s ModeSkill
execute if score @s ModeSkill matches 61081 run scoreboard players set $Damage Global 32000
execute if score @s ModeSkill matches 61081 run scoreboard players set $Damage Global 160000
function calc_manager:apply_damage_modifier
scoreboard players operation @e[tag=Initializing,limit=1] SkillAttribute = $Damage Global
###初期化タグ削除
tag @e[tag=Initializing,limit=1] remove Initializing

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 2
###---演出---End
