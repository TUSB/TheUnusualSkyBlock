
execute at @e[tag=Tutorial.clickEvent] if entity @a[distance=..10] run schedule function tutorial_alpha:click_event/loop 1t replace
execute at @e[tag=Tutorial.clickEvent] unless entity @a[distance=..10] run function tutorial_alpha:click_event/reset

execute as @a[scores={Tutorial.clickEvent=1..}] at @s run tellraw @a[distance=..7] {"translate":"*%1$s はチャットログの使い方を覚えた！","with":[{"selector":"@s"}]}
execute as @a[scores={Tutorial.clickEvent=1..}] run function tutorial_alpha:click_event/reset