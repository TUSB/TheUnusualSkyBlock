##############################
### ワイルドクッキング発動
##############################

scoreboard players set $Give Global 0

execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:beef"}]}] run function skill_manager:hunter/wild_cooking/recipes/beef
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:porkchop"}]}] run function skill_manager:hunter/wild_cooking/recipes/porkchop
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:chicken"}]}] run function skill_manager:hunter/wild_cooking/recipes/chicken
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:mutton"}]}] run function skill_manager:hunter/wild_cooking/recipes/mutton

execute if score $Give Global matches 0 run function skill_manager:hunter/wild_cooking/direction/invalid
