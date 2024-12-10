#> item:sign/click/common/mine_loop
# プレイヤーの持っているアイテムで採掘をする共通funciton
loot spawn 5.0 5.0 5.0 mine 5 5 5 mainhand
scoreboard players remove _ _ 1
execute if score _ _ matches 1.. run function item:sign/click/common/mine_loop
