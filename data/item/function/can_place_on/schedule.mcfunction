#> item:can_place_on/schedule
#as player
execute as @a[predicate=entity:player,advancements={item:can_place_on=true}] at @s run function item:can_place_on/init

execute as @a[advancements={item:can_place_on=true}] run advancement revoke @s only item:can_place_on
