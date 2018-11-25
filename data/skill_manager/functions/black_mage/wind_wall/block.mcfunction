##############################
### ウィンドウォール迎撃・竜巻召喚
##############################

###弾の設定をする
summon minecraft:arrow ^ ^ ^ {Color:-1b,Tags:[FlyingRequired,Projectile,Initializing,WindWallTornado]}

###モーションを取得する
function calc_manager:get/motion1

###モーションを反転する
scoreboard players set $M Global -100
function calc_manager:multiply/pos1

###モーションを適用する
execute as @e[tag=Initializing,limit=1] at @s run function calc_manager:set/motion1

###飛翔物スキル番号を付与する
execute if score $WindWall Global matches 0..1200 run scoreboard players set @e[tag=Initializing,limit=1] ProjectileSkill 52091
execute if score $WindWall Global matches 10000..11200 run scoreboard players set @e[tag=Initializing,limit=1] ProjectileSkill 52092

execute if score $WindWall Global matches 0..1200 run scoreboard players set $Damage Global 40000
execute if score $WindWall Global matches 10000..11200 run scoreboard players set $Damage Global 100000
function calc_manager:apply_damage_modifier
scoreboard players operation @e[tag=Initializing,limit=1] SkillAttribute = $Damage Global

###エンティティ切り離し
tag @e[tag=Initializing,limit=1] remove Initializing

kill @s

###---演出---Start
playsound minecraft:block.anvil.place master @a[distance=..16] ~ ~ ~ 0.8 2
particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0.2 10 force
###---演出---End
