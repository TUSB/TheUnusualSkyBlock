##############################
### エンティティ削除
##############################

###炸裂弾処理
execute if entity @s[tag=LateInitializer] run function entity_manager:ignite

###投射物コール処理
execute if entity @s[tag=CallOnFin,tag=!DeadOff] positioned as @s run function enemy_manager:spawn/allocate_dimension

data merge entity @s[tag=Garbage] {Size:0,DeathTime:19s,HandItems:[{},{}],ArmorItems:[{},{},{},{}]}
kill @s[tag=Garbage]
