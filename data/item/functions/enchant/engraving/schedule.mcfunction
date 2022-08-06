#as player
execute as @a[gamemode=!creative,gamemode=!spectator,nbt={Inventory:[{tag:{Engraving:{}}}]}] at @s run function item:enchant/engraving/init
