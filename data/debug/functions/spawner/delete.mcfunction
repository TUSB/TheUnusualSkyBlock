#> debug:spawner/delete
# @private

execute at @e[distance=..10,type=item_display,sort=nearest,limit=1] run setblock ~ ~ ~ air replace
kill @e[distance=..10,type=item_display,sort=nearest,limit=1]