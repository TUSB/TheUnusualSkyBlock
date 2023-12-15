#データパックのアップデート
#データパック更新後プレイヤーがこのfunctionを実行する

execute unless data storage v13alpha: Version run function settings:version_update/set

data modify storage v13alpha: UpdatingVersion set value {Major:0,Minor:0}

tellraw @a {"translate":"[System] 以前のVersion: v13.%1$s.%2$s.α2   現在のVersion: v13.%3$s.%4$s.α2","color":"green","with":[{"storage":"v13alpha:","nbt":"Version.Major"},{"storage":"v13alpha:","nbt":"Version.Minor"},{"storage":"v13alpha:","nbt":"UpdatingVersion.Major"},{"storage":"v13alpha:","nbt":"UpdatingVersion.Minor"}]}

# データパックRevision情報出力(デバッグ)
execute if data storage main: {debug:1b} run tellraw @a [{"text":"[Debug] データパックRevision:"},{"translate":" (%1$s / %2$s)","color":"yellow","underlined":true,"bold":true,"with":[{"storage":"main:","nbt":"Repository.CommitHashShort"},{"storage":"main:","nbt":"Repository.Branch"}]}]

#メジャーバージョンチェック
function settings:version_update/check/major
