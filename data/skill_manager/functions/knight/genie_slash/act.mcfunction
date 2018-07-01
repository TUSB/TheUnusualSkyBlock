##############################
### 魔人斬り発動
##############################

###---演出---Start
execute as @a[distance=..16] at @s run playsound minecraft:entity.zombie.break_wooden_door master @s ~ ~ ~ 0.8 0.707
#playsound minecraft:entity.ender_dragon.ambient master @a[distance=..16] ~ ~ ~ 1 1.12
###---演出---End

execute if score @s ModeSkill matches 11061 as @e[distance=..5,tag=Mob,nbt={HurtTime:10s},limit=1] at @s run function skill_manager:knight/genie_slash/apply1
execute if score @s ModeSkill matches 11062 as @e[distance=..5,tag=Mob,nbt={HurtTime:10s},limit=1] at @s run function skill_manager:knight/genie_slash/apply2
execute if score @s ModeSkill matches 11063 at @e[distance=..5,tag=Mob,nbt={HurtTime:10s},limit=1] as @e[distance=..5,tag=Mob] at @s run function skill_manager:knight/genie_slash/apply3
