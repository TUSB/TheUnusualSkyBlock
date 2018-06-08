##############################
### ぽむぽむ花火発動
##############################

###花火の設定をする
execute positioned ^ ^ ^-0.25 run summon minecraft:snowball ~ ~1.52 ~ {NoGravity:true,PortalCooldown:7,Tags:[CooldownRequired,PomPom,Initializing]}

execute store result score $Dtarget Global run data get entity @e[tag=Initializing,limit=1] Pos[0] 1000
execute store result score $Dsource Global run data get entity @s Pos[0] 1000
scoreboard players operation $Dtarget Global -= $Dsource Global
execute store result entity @e[tag=Initializing,limit=1] Motion[0] double -0.01 run scoreboard players get $Dtarget Global

execute store result score $Dtarget Global run data get entity @e[tag=Initializing,limit=1] Pos[1] 1000
execute store result score $Dsource Global run data get entity @s Pos[1] 1000
scoreboard players operation $Dtarget Global -= $Dsource Global
scoreboard players remove $Dtarget Global 1520
execute store result entity @e[tag=Initializing,limit=1] Motion[1] double -0.01 run scoreboard players get $Dtarget Global

execute store result score $Dtarget Global run data get entity @e[tag=Initializing,limit=1] Pos[2] 1000
execute store result score $Dsource Global run data get entity @s Pos[2] 1000
scoreboard players operation $Dtarget Global -= $Dsource Global
execute store result entity @e[tag=Initializing,limit=1] Motion[2] double -0.01 run scoreboard players get $Dtarget Global

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
