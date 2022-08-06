#> debug:engraving/lore/remove

data remove storage item: Item.tag.display.Lore[0]
scoreboard players remove _ _ 1
execute if score _ _ matches 1.. run function debug:engraving/lore/remove
