##############################
### エンティティ削除処理
##############################

###敵討伐時処理
execute as @a[scores={KillCount=1..}] run function entity_manager:defeat_enemy
execute as @e[tag=Mob,nbt={AbsorptionAmount:0f}] at @s as @s[y=0,dy=255] run function entity_manager:defeat_enemy
###敵削除フラグ付与
tag @e[tag=Mob,nbt={AbsorptionAmount:0f}] add Garbage
tag @e[tag=CooldownRequired,nbt={PortalCooldown:0}] add Garbage
###エンティティ削除
execute as @e[tag=Garbage] run data merge entity @s {Size:0,DeathTime:19s}
kill @e[tag=Garbage]
