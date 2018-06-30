##############################
### セイクリッドピラー発動
##############################

###チャンクロード
summon minecraft:arrow ~ 0 ~ {XTile:1,YTile:1,ZTile:1,NoGravity:true,Color:-1,Tags:[Garbage,Initialized]}
###弾召喚
summon minecraft:trident 1 1 1 {Tags:[Initializing,BlastSpark,CooldownRequired],PortalCooldown:10,NoGravity:true,Silent:true,DealtDamage:true}
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
# Δhp * 20 (2列40HP*30=1200) これくらい？ 20秒、count=15 x2x15
# Δhp * 30 (4列80HP*75=6000) これくらい？ 30秒、count=25 x3x25
# Δhp * 40 (6列120HP*140=16800) これくらい？ 40秒、count=35 x4x35
execute if score @s ModeSkill matches 41041 run scoreboard players operation $Damage Global *= $2 Const
execute if score @s ModeSkill matches 41042 run scoreboard players operation $Damage Global *= $3 Const
execute if score @s ModeSkill matches 41043 run scoreboard players operation $Damage Global *= $4 Const
###飛翔物属性付与
scoreboard players operation @e[tag=Initializing,limit=1] SkillAttribute = $Damage Global
scoreboard players operation @e[tag=Initializing,limit=1] ProjectileSkill = @s ModeSkill

###初期化タグ削除
tag @e[tag=Initializing,limit=1] remove Initializing
