#データパックのアップデート
#データパック更新後プレイヤーがこのfunctionを実行する

execute unless data storage v13alpha: Version run data modify storage v13alpha: Version set value {Major:0,Minor:0}

data modify storage v13alpha: UpdatingVersion set value {Major:2,Minor:1}

tellraw @a {"translate":"[System] 以前のVersion: v13.%1$s.%2$s.α   現在のVersion: v13.%3$s.%4$s.α","color":"green","with":[{"storage":"v13alpha:","nbt":"Version.Major"},{"storage":"v13alpha:","nbt":"Version.Minor"},{"storage":"v13alpha:","nbt":"UpdatingVersion.Major"},{"storage":"v13alpha:","nbt":"UpdatingVersion.Minor"}]}

execute if data storage main: {debug:1b} run tellraw @a [{"text":"[Debug] 現在適用されているデータパックVersion "},{"text":"__COMMIT_HASH__","color":"green","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/TUSB/TheUnusualSkyBlock/commit/__COMMIT_HASH__"}}]

#メジャーバージョンチェック
function settings:version_update/check/major
