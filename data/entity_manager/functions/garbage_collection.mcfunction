##############################
### エンティティ削除
##############################

###炸裂弾処理
execute if entity @s[tag=GunPowder] run function entity_manager:ignite

data merge entity @s {Size:0,DeathTime:19s,HandItems:[{},{}],ArmorItems:[{},{},{},{}]}
kill @s
