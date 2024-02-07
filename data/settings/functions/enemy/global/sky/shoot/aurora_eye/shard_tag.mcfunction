#Function
#TickingRequiredを外す
    data modify entity @s Tags set from storage mob_data: Tags
    tag @s remove TickingRequired
    data modify storage mob_data: Tags set from entity @s Tags
