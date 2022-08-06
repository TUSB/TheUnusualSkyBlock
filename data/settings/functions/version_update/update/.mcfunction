#アップデート
data modify storage v13alpha: Version set from storage v13alpha: UpdatingVersion
function main:load_once

#v13.0.1 個別実行なし
#execute if data storage v13alpha: {Version:{Major:0,Minor:1}} run function settings:version_update/update/13_0_1_alpha

#看板書き換え
execute in area:skylands run forceload add -169 770
execute in area:skylands run data modify block -169 49 770 Text2 set value '{"text":"v13.%3$s.%4$s.α","with":[{"storage":"v13alpha:","nbt":"Version.Major"},{"storage":"v13alpha:","nbt":"Version.Minor"}]}'
execute in area:skylands run forceload remove -169 770

execute in area:cloudia run forceload add -1896 -138
execute in area:cloudia run data modify block -1896 113 -138 Text2 set value '{"text":"v13.%3$s.%4$s.α","with":[{"storage":"v13alpha:","nbt":"Version.Major"},{"storage":"v13alpha:","nbt":"Version.Minor"}]}'
execute in area:cloudia run forceload remove -1896 -138
