##############################
### 猛火斬ダメージ付与
##############################

###---演出---Start
playsound minecraft:entity.zombie.attack_wooden_door master @a[distance=..16] ~ ~ ~ 0.8 0.7072
###---演出---End

execute as 0-0-0-0-0 at @s run function calc_manager:set/random_rotation
execute at @s positioned ~ ~1 ~ rotated as 0-0-0-0-0 facing ^ ^1 ^ positioned ^0.2 ^ ^-0.4 run function skill_manager:knight/raging_slash/decorate

scoreboard players remove @s RagingDamage 1
scoreboard players operation @s StackDamage = @s RagingDamage
scoreboard players add @s Damage 0
scoreboard players operation $RagingCount Global = @s RagingDamage
scoreboard players operation $RagingCount Global %= $100 Const
execute if score $RagingCount Global matches ..0 run function skill_manager:knight/raging_slash/finalize
