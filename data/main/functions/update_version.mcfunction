#データパックのアップデート
#データパック更新後プレイヤーがこのfunctionを実行する

execute unless data storage v13alpha: Version run data modify storage v13alpha: Version set value {Major:0,Minor:0}

data modify storage v13alpha: UpdatingVersion set value {Major:0,Minor:1}

tellraw @a {"translate":"[System] 以前のVersion: v13.%1$s.%2$s.α   現在のVersion: v13.%3$s.%4$s.α","color":"green","with":[{"storage":"v13alpha:","nbt":"Version.Major"},{"storage":"v13alpha:","nbt":"Version.Minor"},{"storage":"v13alpha:","nbt":"UpdatingVersion.Major"},{"storage":"v13alpha:","nbt":"UpdatingVersion.Minor"}]}

#メジャーバージョンチェック
function settings:version_update/check/major
