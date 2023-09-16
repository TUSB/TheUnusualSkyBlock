#Function
# サバイバルエリアかどうか
    execute if entity @s[predicate=settings:enemy/conditions/survival] run fill ~ ~-1 ~ ~ ~-1 ~ infested_chiseled_stone_bricks replace #settings:conditions/can_replace
    execute if entity @s[predicate=settings:enemy/conditions/survival] run playsound item.shovel.flatten hostile @a[distance=..32] ~ ~ ~ 2 0 0
    execute if entity @s[predicate=settings:enemy/conditions/survival] run playsound item.shovel.flatten hostile @a[distance=..32] ~ ~ ~ 2 0.03 0
    execute if entity @s[predicate=settings:enemy/conditions/survival] run playsound item.shovel.flatten hostile @a[distance=..32] ~ ~ ~ 2 0.06 0
    execute if entity @s[predicate=settings:enemy/conditions/survival] run playsound item.shovel.flatten hostile @a[distance=..32] ~ ~ ~ 2 0.09 0
    execute if entity @s[predicate=settings:enemy/conditions/survival] run playsound item.shovel.flatten hostile @a[distance=..32] ~ ~ ~ 2 0.12 0
    execute if entity @s[predicate=settings:enemy/conditions/survival] run playsound item.shovel.flatten hostile @a[distance=..32] ~ ~ ~ 2 0.15 0
