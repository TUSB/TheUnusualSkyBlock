##############################
### セイクリッドピラー発動
##############################

###視線サーチャー設定をする
execute positioned ^ ^ ^-0.2 run summon minecraft:trident ~ ~1.52 ~ {Invulnerable:true,NoGravity:true,Silent:true,DealtDamage:true,PortalCooldown:20,Tags:[CooldownRequired,SacredPillar,Initializing,Rapid]}

###モーション取得
execute as @e[tag=Initializing,limit=1] positioned ~ ~1.52 ~ run function calc_manager:get/direction1
###モーション補正
scoreboard players set $M Global 999
function calc_manager:multiply/pos1

###モーション適用
execute as @e[tag=Initializing,limit=1] at @s run function calc_manager:set/motion1

###ダメージ算出
execute store result score $Damage Global run data get entity @s Health 100
scoreboard players operation $Damage Global -= @s PillarDamage
###ダメージ補正
# Δhp * 20 (2列40HP*20=800) これくらい？ 20秒、count=100 x2x10
# Δhp * 30 (4列80HP*45=3600) これくらい？ 30秒、count=150 x3x15
# Δhp * 40 (6列120HP*80=9600) これくらい？ 40秒、count=200 x4x20
execute if score @s ModeSkill matches 51041 run scoreboard players operation $Damage Global *= $2 Const
execute if score @s ModeSkill matches 51042 run scoreboard players operation $Damage Global *= $3 Const
execute if score @s ModeSkill matches 51043 run scoreboard players operation $Damage Global *= $4 Const
###飛翔物属性付与
scoreboard players operation @e[tag=Initializing,limit=1] SkillAttribute = $Damage Global

###初期化タグ削除
tag @e[tag=Initializing,limit=1] remove Initializing
