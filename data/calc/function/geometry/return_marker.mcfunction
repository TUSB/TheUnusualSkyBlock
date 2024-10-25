#> calc:geometry/return_marker
# as Markerで実行
execute in area:control_area run tp @s 5 5 5
#scheduleで実行時(0-0-0-0-0対象)
execute unless entity @s run tp 0-0-0-0-0 5 5 5
