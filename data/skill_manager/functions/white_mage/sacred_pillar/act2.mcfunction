##############################
### セイクリッドピラー発動
##############################

###弾召喚
summon minecraft:trident 1 1 1 {Tags:[Initializing,SacredPillar,CooldownRequired],PortalCooldown:10,NoGravity:true,Silent:true,DealtDamage:true}
###モーションを計算する
execute positioned ^ ^ ^-0.1 run tp @e[tag=Initializing,limit=1] ~ ~1.52 ~
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
# Δhp * 500 (3列60HP*25*20) これくらい？ 20秒
# Δhp * 875 (4列80HP*25*35) これくらい？ 30秒
# Δhp *1250 (6列120HP*25*50) これくらい？ 40秒
scoreboard players operation $Damage Global *= $25 Const
###飛翔物属性付与
scoreboard players operation @e[tag=Initializing,limit=1] SkillAttribute = $Damage Global
scoreboard players operation @e[tag=Initializing,limit=1] ProjectileSkill = @s ModeSkill

###初期化タグ削除
tag @e[tag=Initializing,limit=1] remove Initializing
