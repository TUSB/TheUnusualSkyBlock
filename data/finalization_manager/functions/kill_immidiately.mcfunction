##############################
### エンティティ即時削除
##############################

execute if entity @s[tag=DataManaged] run function data_manager:finalizer/destroy_entity
data merge entity @s {Size:0,DeathTime:19s,HandItems:[{},{}],ArmorItems:[{},{},{},{}]}
kill @s
