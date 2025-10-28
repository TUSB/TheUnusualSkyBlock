#Function
# プレイヤーの方を向く
    execute at @s facing entity @a[predicate=entity:player,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~
    execute at @s on passengers run tp @s ~ ~ ~ ~ 0
    execute at @s on passengers on passengers run tp @s ~ ~ ~ ~ 0
