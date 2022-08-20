#アップデート
data modify storage v13alpha: Version set from storage v13alpha: UpdatingVersion

execute if data storage v13alpha: {Version:{Major:1}} if score $World Calc matches ..0 run function settings:version_update/update/13_1_1_alpha
#execute if data storage v13alpha: {Version:{Major:1}} if score $World Calc matches ..1 run function settings:version_update/update/13_1_2_alpha

#看板書き換え
execute in area:skylands run forceload add -169 770
execute in area:skylands run data modify block -169 49 774 Text2 set value '{"translate":"v13.%1$s.%2$s.α","with":[{"storage":"v13alpha:","nbt":"Version.Major"},{"storage":"v13alpha:","nbt":"Version.Minor"}]}'
execute in area:skylands run forceload remove -169 770

execute in area:cloudia run forceload add -1896 -138
execute in area:cloudia run data modify block -1896 113 -138 Text2 set value '{"translate":"v13.%1$s.%2$s.α","with":[{"storage":"v13alpha:","nbt":"Version.Major"},{"storage":"v13alpha:","nbt":"Version.Minor"}]}'
execute in area:cloudia run forceload remove -1896 -138
