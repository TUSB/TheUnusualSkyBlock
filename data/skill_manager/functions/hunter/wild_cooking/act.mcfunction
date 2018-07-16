##############################
### ワイルドクッキング発動
##############################

scoreboard players set $Give Global 0
execute if score @s SupportSkill matches 32032 run scoreboard players operation @s CookingSkill *= $2 Const

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
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:tropical_fish"}]}] run function skill_manager:hunter/wild_cooking/recipes/tropical_fish
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:pufferfish"}]}] run function skill_manager:hunter/wild_cooking/recipes/pufferfish
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:egg"}]}] run function skill_manager:hunter/wild_cooking/recipes/egg
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:turtle_egg"}]}] run function skill_manager:hunter/wild_cooking/recipes/turtle_egg
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]}] run function skill_manager:hunter/wild_cooking/recipes/poisonous_potato
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:spider_eye"}]}] run function skill_manager:hunter/wild_cooking/recipes/spider_eye
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:rotten_flesh"}]}] run function skill_manager:hunter/wild_cooking/recipes/rotten_flesh
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:cocoa_beans"}]}] run function skill_manager:hunter/wild_cooking/recipes/cocoa_beans
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:beetroot"}]}] run function skill_manager:hunter/wild_cooking/recipes/beetroot
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:wheat"}]}] run function skill_manager:hunter/wild_cooking/recipes/wheat
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:pumpkin"}]}] run function skill_manager:hunter/wild_cooking/recipes/pumpkin
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:red_mushroom"}]}] run function skill_manager:hunter/wild_cooking/recipes/red_mushroom
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:brown_mushroom"}]}] run function skill_manager:hunter/wild_cooking/recipes/brown_mushroom
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:kelp"}]}] run function skill_manager:hunter/wild_cooking/recipes/kelp
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:apple"}]}] run function skill_manager:hunter/wild_cooking/recipes/apple

execute if score $Give Global matches 0 run function skill_manager:hunter/wild_cooking/direction/invalid
