##############################
### エンティティ死亡時処理
##############################

execute if entity @s[tag=CallOnDeath] run function enemy:ai/call/death
kill @s
