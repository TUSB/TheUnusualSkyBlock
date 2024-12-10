#> job:change/instant/schedule
# as player
execute as @a[nbt={Inventory:[{id:"minecraft:paper"}]}] at @s if data entity @s Inventory[].components."minecraft:custom_data".JobChangeTo run function job:change/instant/init
