##############################
### ぽむぽむ花火発動
##############################

###花火の設定をする
execute positioned ^ ^ ^-0.25 run summon minecraft:snowball ~ ~1.52 ~ {NoGravity:true,PortalCooldown:7,Tags:[CooldownRequired,PomPom,Initializing]}
###座標取得
execute as @e[tag=Initializing,limit=1] at @s run function calc_manager:get/pos1
function calc_manager:get/pos2

###モーション量計算
scoreboard players operation $X1 Global -= $X2 Global
scoreboard players operation $Y1 Global -= $Y2 Global
scoreboard players remove $Y1 Global 1520
scoreboard players operation $Z1 Global -= $Z2 Global

###モーション量補正
scoreboard players set $M Global -1000
function calc_manager:multiply/pos1

###モーション適用
execute as @e[tag=Initializing,limit=1] at @s run function calc_manager:set/motion1

###飛翔物スキル付与
scoreboard players operation @e[tag=Initializing,limit=1] ProjectileSkill = @s ModeSkill

###初期化タグ削除
tag @e[tag=Initializing,limit=1] remove Initializing

###演出
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 2

###MP消費
scoreboard players operation @s MPConsumption += @s ModeCost
###スキルインターバル設定
scoreboard players set @s SkillInterval 20
