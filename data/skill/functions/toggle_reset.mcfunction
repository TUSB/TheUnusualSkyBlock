
execute store result score _ _ run scoreboard players reset @s[scores={ReactiveLevel=1..}] ReactiveLevel
execute if score _ _ matches 1 run function makeup:skill/act/knight/reactive_heal/toggle
execute store result score _ _ run scoreboard players reset @s[scores={ChoyakuLevel=1..}] ChoyakuLevel
execute if score _ _ matches 1 run function makeup:skill/act/ninja/choyaku/toggle
execute store result score _ _ run scoreboard players reset @s[scores={WildHealing=1..}] WildHealing
execute if score _ _ matches 1 run function makeup:skill/act/hunter/wild_healing/toggle
execute store result score _ _ run scoreboard players reset @s[scores={SayonaraLevel=1..}] SayonaraLevel
execute if score _ _ matches 1 run function makeup:skill/act/ninja/sayonara/toggle
