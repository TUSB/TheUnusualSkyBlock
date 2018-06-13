##############################
### セイクリッドピラー発動
##############################

###視線サーチャー設定をする
execute positioned ^ ^ ^-0.2 run summon minecraft:arrow ~ ~1.52 ~ {Invulnerable:true,NoGravity:true,Silent:true,Color:-1,damage:0d,PortalCooldown:20,Tags:[CooldownRequired,SacredPillar,Initializing,Rapid]}

###座標取得
execute as @e[tag=Initializing,limit=1] at @s run function calc_manager:get/pos1
function calc_manager:get/pos2

###座標計算
scoreboard players operation $X1 Global -= $X2 Global
scoreboard players operation $Y1 Global -= $Y2 Global
scoreboard players remove $Y1 Global 1520
scoreboard players operation $Z1 Global -= $Z2 Global

###座標補正
scoreboard players set $M Global -4900
function calc_manager:multiply/pos1

###座標適用
execute as @e[tag=Initializing,limit=1] at @s run function calc_manager:set/motion1

###飛翔物スキル付与
scoreboard players operation @e[tag=Initializing,limit=1] ProjectileSkill = @s ModeSkill
###ダメージ算出
execute store result score $Damage PillarDamage run data get entity @s Health 100
scoreboard players operation $Damage PillarDamage -= @s PillarDamage
###飛翔物属性付与
scoreboard players operation @e[tag=Initializing,limit=1] PillarDamage = $Damage PillarDamage
scoreboard players operation @e[tag=Initializing,limit=1] ProjectileSkillA = $Damage PillarDamage

###初期化タグ削除
tag @e[tag=Initializing,limit=1] remove Initializing
