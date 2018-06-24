
execute positioned ^ ^ ^-0.3 run summon minecraft:trident ~ ~1.52 ~ {Tags:[Initializing,Creeper],NoGravity:true,Color:-1,DealtDamage:true}

###モーションを計算する
execute as @e[tag=Initializing,limit=1] positioned ~ ~1.52 ~ run function calc_manager:get/direction1

###モーション量を補正する
scoreboard players set $M Global 1000
function calc_manager:multiply/pos1

###モーションを適用する
execute as @e[tag=Initializing,limit=1] at @s run function calc_manager:set/motion1

tag @e[tag=Initializing] remove Initializing


execute positioned ^ ^ ^-0.3 run summon minecraft:shulker_bullet ~ ~1.52 ~ {Tags:[Initializing,Creeper2],NoGravity:true}

###モーションを計算する
execute as @e[tag=Initializing,limit=1] positioned ~ ~1.52 ~ run function calc_manager:get/direction1

###モーション量を補正する
#scoreboard players set $M Global 100
#function calc_manager:multiply/pos1

###モーションを適用する
execute as @e[tag=Initializing,limit=1] at @s run function calc_manager:set/motion1

tag @e[tag=Initializing] remove Initializing



execute as @e[tag=Creeper,nbt={inGround:true}] at @s run summon creeper ~ ~-2 ~ {Fuse:0s,ExplosionRadius:0b}
kill @e[tag=Creeper,nbt={inGround:true}]
