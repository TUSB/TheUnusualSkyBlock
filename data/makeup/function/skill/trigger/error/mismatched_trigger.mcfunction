#> makeup:skill/trigger/error/mismatched_trigger
tellraw @s [{"translate":"アイテムの種類と発動条件が異なります。","color":"red"}]
playsound block.dispenser.fail player @s ~ ~ ~ 1 1.2
