##############################
### 真空斬り発動
##############################

scoreboard players reset @s SprintOneCm

###ヒット
execute as @e[distance=..6,tag=Mob,scores={DecrementTimer=10},limit=1] at @s run function skill_manager:knight/aerial_slash/hit

###弾の設定をする
execute unless entity @e[distance=..6,scores={DecrementTimer=10},limit=1] positioned ^ ^ ^-0.25 run summon minecraft:arrow ~ ~1.52 ~ {damage:0d,NoGravity:true,Color:-1,Tags:[FlyingRequired,Projectile,Initializing,Rapid]}

###モーションを計算する
execute as @e[tag=Initializing,limit=1] positioned ~ ~1.52 ~ run function calc_manager:get/direction1

###モーション量を補正する
scoreboard players set $M Global 250
function calc_manager:multiply/pos1

###モーションを適用する
execute as @e[tag=Initializing,limit=1] at @s run function calc_manager:set/motion1

###飛翔物スキル番号を付与する
scoreboard players operation @e[tag=Initializing,limit=1] ProjectileSkill = @s ModeSkill
execute if score @s ModeSkill matches 11041 run scoreboard players set $Damage Global 70000
execute if score @s ModeSkill matches 11042 run scoreboard players set $Damage Global 150000
execute if score @s ModeSkill matches 11043 run scoreboard players set $Damage Global 250000
execute if score @s ModeSkill matches 11044 run scoreboard players set $Damage Global 1000000
function calc_manager:apply_damage_modifier
scoreboard players operation @e[tag=Initializing,limit=1] SkillAttribute = $Damage Global

###エンティティ切削除
tag @e[tag=Initializing,limit=1] remove Initializing
