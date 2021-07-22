##############################
### エンティティ死亡時処理
##############################

execute if entity @s[tag=CallOnDeath] run function entity:enemy/ai/call/death
kill @s
