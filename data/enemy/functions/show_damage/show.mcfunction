#ダメージ表示
execute if score @s StoredDamage matches 0.. run loot spawn ~ ~ ~ loot enemy:health_minus
scoreboard players set _ _ -1
scoreboard players operation @s StoredDamage *= _ _
execute if score @s StoredDamage matches 1.. run loot spawn ~ ~ ~ loot enemy:health_plus
execute as @e[type=item,tag=!Initialized,distance=..0.01,limit=1] run data modify entity @s CustomName set from entity @s Item.tag.display.Name
data merge entity @e[type=item,tag=!Initialized,distance=..0.01,limit=1] {Tags:[Initialized],CustomNameVisible:1b,Age:5986,PickupDelay:32767}
