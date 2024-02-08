#Function
# 暗いところにいると回復する
    execute on vehicle if entity @s[predicate=settings:enemy/conditions/warden_heal] run data modify storage mob_data: Call set value {Name:"Heal",Multiplier:1d}
    execute on vehicle if entity @s[predicate=settings:enemy/conditions/warden_heal] run function skill:enemy/heal/
# 近くにいる長時間のプレイヤーに暗闇を付与する
    effect give @a[predicate=entity:player,distance=..32] darkness 120 0 false
    execute as @a[predicate=entity:player,distance=..32] at @s run playsound entity.warden.heartbeat player @s ~ ~ ~ 1.0 1 0.0
# 悪いが凍結してもらう
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 100
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches ..3 run effect give @a[predicate=entity:player,distance=..4] invisibility 5 4
    execute if score _ Random matches ..50 as @a[predicate=entity:player,distance=..16] at @s if block ~ ~ ~ water run effect give @s invisibility 5 4
    execute if score _ Random matches ..75 on vehicle at @s if block ~ ~ ~ water run effect give @a[predicate=entity:player,distance=..16] invisibility 5 4
# 悪いが火だるまになってもらう
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 100
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches ..3 run effect give @a[predicate=entity:player,distance=..4] invisibility 5 30
    execute if score _ Random matches ..50 as @a[predicate=entity:player,distance=..16] at @s if block ~ ~ ~ lava run effect give @s invisibility 5 30
    execute if score _ Random matches ..75 on vehicle at @s if block ~ ~ ~ lava run effect give @a[predicate=entity:player,distance=..16] invisibility 200 3
