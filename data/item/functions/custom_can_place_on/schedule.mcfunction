#as player
execute as @a[gamemode=!creative,gamemode=!spectator,advancements={item:custom_can_place_on=true}] at @s run function item:custom_can_place_on/init

execute as @a[advancements={item:custom_can_place_on=true}] run advancement revoke @s only item:custom_can_place_on