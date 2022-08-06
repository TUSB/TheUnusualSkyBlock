#メジャーバージョンチェック
execute store result score _ Calc run data get storage v13alpha: Version.Major
execute store result score _ _ run data get storage v13alpha: UpdatingVersion.Major

execute unless score _ Calc = _ _ run tellraw @a {"translate":"[System] 古いバージョンです。ワールド本体の更新が必要です。"}
execute if score _ Calc = _ _ run function settings:version_update/check/minor
