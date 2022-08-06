particle minecraft:item minecraft:end_crystal ~ ~0.5 ~ 0 0 0 0.5 50 force
playsound minecraft:entity.item.break master @s
tellraw @s [{"text":""},{"storage":"item:","nbt":"Item.tag.display.Name","interpret":true},{"translate":" は砕け散った!"}]
