# as player
execute as @a[nbt={Inventory:[{id:"minecraft:paper"}]}] at @s if data entity @s Inventory[].tag.JobChangeTo run function job:change/instant/init
