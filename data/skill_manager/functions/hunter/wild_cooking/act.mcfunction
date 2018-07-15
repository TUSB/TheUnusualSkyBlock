##############################
### ワイルドクッキング発動
##############################

scoreboard players set $Give Global 0

execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:beef"}]}] run function skill_manager:hunter/wild_cooking/recipes/beef
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:porkchop"}]}] run function skill_manager:hunter/wild_cooking/recipes/porkchop
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:chicken"}]}] run function skill_manager:hunter/wild_cooking/recipes/chicken
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:mutton"}]}] run function skill_manager:hunter/wild_cooking/recipes/mutton
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:rabbit"}]}] run function skill_manager:hunter/wild_cooking/recipes/rabbit
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:cod"}]}] run function skill_manager:hunter/wild_cooking/recipes/cod
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:salmon"}]}] run function skill_manager:hunter/wild_cooking/recipes/salmon
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:potato"}]}] run function skill_manager:hunter/wild_cooking/recipes/potato
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot"}]}] run function skill_manager:hunter/wild_cooking/recipes/carrot
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:melon_slice"}]}] run function skill_manager:hunter/wild_cooking/recipes/melon_slice
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:melon"}]}] run function skill_manager:hunter/wild_cooking/recipes/melon
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:chorus_fruit"}]}] run function skill_manager:hunter/wild_cooking/recipes/chorus_fruit

execute if score $Give Global matches 0 run function skill_manager:hunter/wild_cooking/direction/invalid
