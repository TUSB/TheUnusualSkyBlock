#Function
# 近くのプレイヤーにキレる
    data modify storage mob_data: Call.anger set value {anger:999}
    data modify storage mob_data: Call.anger.uuid set from entity @a[predicate=entity:player,distance=..64,sort=nearest,limit=1] UUID
    data modify entity @s anger.suspects append from storage mob_data: Call.anger
