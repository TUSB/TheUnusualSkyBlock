##############################
### ふかふか発動
##############################

###弾召喚
execute positioned ^ ^ ^-0.1 run summon minecraft:potion ~ ~1.52 ~ {Potion:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:16777215}},Tags:[Initializing,FukafukaPotion],Passengers:[{id:"minecraft:arrow",Color:-1,NoGravity:true,Tags:[Fukafuka,InitializingChild]}]}
###モーションを計算する
execute as @e[tag=Initializing,limit=1] positioned ~ ~1.52 ~ run function calc_manager:get/direction1

###モーション補正
scoreboard players set $M Global 180
function calc_manager:multiply/pos1
###モーション適用
execute as @e[tag=Initializing,limit=1] at @s run function calc_manager:set/motion1

###飛翔物スキル設定
scoreboard players operation @e[tag=Initializing,limit=1] ProjectileSkill = @s ModeSkill
execute if score @s ModeSkill matches 61051 run scoreboard players set @e[tag=InitializingChild,limit=1] SkillAttribute 400
execute if score @s ModeSkill matches 61052 run scoreboard players set @e[tag=InitializingChild,limit=1] SkillAttribute 800

###初期化タグ削除
tag @e[tag=Initializing,limit=1] remove Initializing
tag @e[tag=InitializingChild,limit=1] remove InitializingChild

###---演出---Start
playsound minecraft:entity.spider.death master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:entity.puffer_fish.blow_up master @a[distance=..16] ~ ~ ~ 1 1
###---演出---End
