#Function
## 持続ダメージ検知
execute store result score _ _ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.StoredDamage 1
execute unless score _ _ = @s StoredDamage run function settings:enemy/skylands/boss/shoot/zedra/tick_rage2
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.StoredDamage int 1 run scoreboard players get @s StoredDamage
