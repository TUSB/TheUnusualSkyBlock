#Function
scoreboard players operation _ _ = @s Level
scoreboard players set _ Calc 5
scoreboard players operation _ _ /= _ Calc
scoreboard players add _ _ 15
execute store result entity @s ArmorItems[3].tag.Enchantments[0].lvl int 1 run scoreboard players get _ _
