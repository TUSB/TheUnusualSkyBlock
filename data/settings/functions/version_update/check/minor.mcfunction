#マイナーバージョンチェック
execute store result score _ Calc run data get storage v13alpha: Version.Minor
execute store result score _ _ run data get storage v13alpha: UpdatingVersion.Minor

execute if score _ Calc > _ _ run tellraw @a {"translate":"[System] 古いバージョンです。最新のデータパックをDLしてください。"}
execute if score _ Calc = _ _ run tellraw @a {"translate":"[System] すでに最新のバージョンです。"}
execute if score _ Calc < _ _ run tellraw @a {"translate":"[System] 正常にアップデートされました。"}
execute if score _ Calc < _ _ run function settings:version_update/update/
