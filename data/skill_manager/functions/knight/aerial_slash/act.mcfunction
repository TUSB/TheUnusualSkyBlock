##############################
### 真空斬り発動
##############################

scoreboard players reset @s SprintOneCm

###HurtTime:10sがあればヒットとみなす
execute as @e[distance=..5,tag=Mob,nbt={HurtTime:10s},limit=1] at @s run function skill_manager:knight/aerial_slash/hit

###弾の設定をする
execute unless entity @e[distance=..5,tag=Mob,nbt={HurtTime:10s},limit=1] positioned ^ ^ ^-0.25 run summon minecraft:arrow ~ ~1.52 ~ {damage:0d,NoGravity:true,Color:-1,Tags:[Projectile,Initializing,Rapid]}
###座標を取得する
execute as @e[tag=Initializing,limit=1] at @s run function calc_manager:get/pos1
function calc_manager:get/pos2
###モーション量を計算する
scoreboard players operation $X1 Global -= $X2 Global
scoreboard players operation $Y1 Global -= $Y2 Global
scoreboard players remove $Y1 Global 1520
scoreboard players operation $Z1 Global -= $Z2 Global
###モーション量を補正する
scoreboard players set $M Global -1000
function calc_manager:multiply/pos1
###モーションを適用する
execute as @e[tag=Initializing,limit=1] at @s run function calc_manager:set/motion1

###飛翔物スキル番号を付与する
scoreboard players operation @e[tag=Initializing,limit=1] ProjectileSkill = @s ModeSkill

###エンティティ切削除
tag @e[tag=Initializing,limit=1] remove Initializing
