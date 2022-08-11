#マイナーバージョンチェック
execute store result score $World Calc run data get storage v13alpha: Version.Minor
execute store result score $World _ run data get storage v13alpha: UpdatingVersion.Minor

execute if score $World Calc > $World _ run tellraw @a {"translate":"[System] 古いバージョンです。最新のデータパックをDLしてください。"}
execute if score $World Calc = $World _ run tellraw @a {"translate":"[System] すでに最新のバージョンです。"}
execute if score $World Calc < $World _ run tellraw @a {"translate":"[System] 正常にアップデートされました。"}
execute if score $World Calc < $World _ run function settings:version_update/update/
