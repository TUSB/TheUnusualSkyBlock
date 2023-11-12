#Function
# 暗いところにいると回復する
    execute on vehicle if entity @s[predicate=settings:enemy/conditions/warden_heal] run data modify storage mob_data: Call set value {Name:"Heal",Multiplier:1d}
    execute on vehicle if entity @s[predicate=settings:enemy/conditions/warden_heal] run function skill:enemy/heal/
