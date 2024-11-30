#> main:version_update/update/
#アップデート
data modify storage v13alpha: Version set from storage v13alpha: UpdatingVersion

## v13α用アップデート
#execute if data storage v13alpha: {Version:{Major:1}} if score $World Calc matches ..0 run function settings:version_update/update/13_1_1_alpha
#(ロールバックのため13.1.1と同じ)
#execute if data storage v13alpha: {Version:{Major:2}} if score $World Calc matches ..0 run function settings:version_update/update/13_1_1_alpha

function #settings:version_update/update

#看板書き換え
execute in area:cloudia run forceload add -1896 -138
execute in area:cloudia run forceload add -1924 -136
execute in area:cloudia run data modify block -1896 113 -138 Text2 set value '{"translate":"v13.%1$s.%2$s.α2","with":[{"storage":"v13alpha:","nbt":"Version.Major"},{"storage":"v13alpha:","nbt":"Version.Minor"}]}'
execute in area:cloudia positioned -1924.5 111.0 -136.5 run data modify entity @e[distance=0,type=area_effect_cloud,limit=1] CustomName set value '{"translate":"v13.%1$s.%2$s.α2","with":[{"storage":"v13alpha:","nbt":"Version.Major"},{"storage":"v13alpha:","nbt":"Version.Minor"}]}'
execute in area:cloudia run forceload remove all
