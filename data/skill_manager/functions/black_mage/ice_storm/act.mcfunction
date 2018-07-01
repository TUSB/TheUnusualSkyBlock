##############################
### アイスストーム発動
##############################

###弾召喚
summon minecraft:trident 1 1 1 {Tags:[Initializing,IceStorm],Silent:true,DealtDamage:true}
###モーションを計算する
execute positioned ^ ^ ^-0.1 run tp @e[tag=Initializing,limit=1] ~ ~1.52 ~
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
playsound entity.firework_rocket.launch master @a[distance=..16] ~ ~ ~ 1 0
###---演出---End
