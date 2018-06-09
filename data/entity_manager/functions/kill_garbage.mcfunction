##############################
### エンティティ削除処理
##############################

###敵討伐時処理
execute as @a[scores={KillCount=1..}] run function entity_manager:defeat_enemy
execute as @e[tag=Mob,nbt={AbsorptionAmount:0f}] at @s run function entity_manager:mob_death

###敵削除フラグ付与
tag @e[tag=CooldownRequired,nbt={PortalCooldown:0}] add Garbage
tag @e[tag=Vehicle,nbt=!{Passengers:[{}]}] add Garbage

###エンティティ削除
execute as @e[tag=Garbage] run data merge entity @s {Size:0,DeathTime:19s,HandItems:[{},{}],ArmorItems:[{},{},{},{}]}
kill @e[tag=Garbage]
