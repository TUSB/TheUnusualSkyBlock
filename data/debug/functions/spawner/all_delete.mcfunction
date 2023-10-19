#> debug:spawner/all_delete
# @private

execute at @e[distance=..128,type=item_display] run setblock ~ ~ ~ air replace
kill @e[distance=..128,type=item_display]