##############################
### ふかふか発動
##############################

###弾召喚
execute if score @s ModeSkill matches 61051 positioned ^ ^ ^-0.1 run summon minecraft:potion ~ ~1.52 ~ {Potion:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:16777215}},Tags:[Initializing,FukafukaPotion],Passengers:[{id:"minecraft:arrow",Color:-1,NoGravity:true,Tags:[Fukafuka],PortalCooldown:300}]}
execute if score @s ModeSkill matches 61052 positioned ^ ^ ^-0.1 run summon minecraft:potion ~ ~1.52 ~ {Potion:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:16777215}},Tags:[Initializing,FukafukaPotion],Passengers:[{id:"minecraft:arrow",Color:-1,NoGravity:true,Tags:[Fukafuka],PortalCooldown:600}]}
###モーションを計算する
execute as @e[tag=Initializing,limit=1] positioned ~ ~1.52 ~ run function calc_manager:get/direction1

###モーション補正
scoreboard players set $M Global 180
function calc_manager:multiply/pos1
###モーション適用
execute as @e[tag=Initializing,limit=1] at @s run function calc_manager:set/motion1

###飛翔物スキル設定
scoreboard players operation @e[tag=Initializing,limit=1] ProjectileSkill = @s ModeSkill

###初期化タグ削除
tag @e[tag=Initializing,limit=1] remove Initializing

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 2
###---演出---End
