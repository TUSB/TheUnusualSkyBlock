#> main:version_update/check/
#データパックのアップデート
#データパック更新後プレイヤーがこのfunctionを実行する

execute unless data storage v13alpha: Version run function settings:version_update/set
data modify storage v13alpha: BeforeVersion set from storage v13alpha: Version

scoreboard players set _ _ 0
execute store result score _ _ run function #settings:version_update/check

# アップデートテキスト表示
execute if score _ _ matches 1 run schedule function settings:version_update/result 1t

data modify storage v13alpha: Text set value ['""']
data modify storage v13alpha: Text append value '{"translate":"[System] 以前のVersion: v13.%1$s.%2$s.α2   現在のVersion: v13.%3$s.%4$s.α2","color":"green","with":[{"storage":"v13alpha:","nbt":"BeforeVersion.Major"},{"storage":"v13alpha:","nbt":"BeforeVersion.Minor"},{"storage":"v13alpha:","nbt":"UpdatingVersion.Major"},{"storage":"v13alpha:","nbt":"UpdatingVersion.Minor"}]}'

# データパックRevision情報出力(デバッグ)
execute if data storage main: {debug:1b} run data modify storage v13alpha: Text append value '[{"text":"[Debug] データパックRevision:"},{"translate":" (%1$s / %2$s)","color":"yellow","underlined":true,"bold":true,"with":[{"storage":"main:","nbt":"Repository.CommitHashShort"},{"storage":"main:","nbt":"Repository.Branch"}]}]'

#メジャーバージョンチェック
execute if score _ _ matches 1 run function settings:version_update/check/major
