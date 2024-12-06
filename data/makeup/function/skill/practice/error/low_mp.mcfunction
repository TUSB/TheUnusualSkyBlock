#> makeup:skill/practice/error/low_mp
data modify storage calc: Text set value '{"translate":"MPが足りない!","color":"red"}'
data modify storage calc: TextLength set value 8
function calc:show_text/actionbar

playsound block.dispenser.fail master @s ~ ~ ~ 1 1.2
