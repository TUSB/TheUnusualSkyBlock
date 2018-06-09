##############################
### セイクリッドピラー発動
##############################

###視線サーチャー設定をする
execute positioned ^ ^ ^-0.2 run summon minecraft:arrow ~ ~1.52 ~ {Invulnerable:true,NoGravity:true,Silent:true,Color:-1,damage:0d,PortalCooldown:20,Tags:[CooldownRequired,SacredPillar,Initializing,Rapid]}

execute store result score $Dtarget Global run data get entity @e[tag=Initializing,limit=1] Pos[0] 1000
execute store result score $Dsource Global run data get entity @s Pos[0] 1000
scoreboard players operation $Dtarget Global -= $Dsource Global
execute store result entity @e[tag=Initializing,limit=1] Motion[0] double -0.049 run scoreboard players get $Dtarget Global

execute store result score $Dtarget Global run data get entity @e[tag=Initializing,limit=1] Pos[1] 1000
execute store result score $Dsource Global run data get entity @s Pos[1] 1000
scoreboard players operation $Dtarget Global -= $Dsource Global
scoreboard players remove $Dtarget Global 1520
execute store result entity @e[tag=Initializing,limit=1] Motion[1] double -0.049 run scoreboard players get $Dtarget Global

execute store result score $Dtarget Global run data get entity @e[tag=Initializing,limit=1] Pos[2] 1000
execute store result score $Dsource Global run data get entity @s Pos[2] 1000
scoreboard players operation $Dtarget Global -= $Dsource Global
execute store result entity @e[tag=Initializing,limit=1] Motion[2] double -0.049 run scoreboard players get $Dtarget Global

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
