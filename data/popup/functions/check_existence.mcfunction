# Popup代替表示
execute store success score _ Ret run scoreboard players set $World Popup 0
execute if score _ Ret matches 0 run function popup:alternative_pop