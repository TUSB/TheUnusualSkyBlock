#> main:version_update/check/minor
#マイナーバージョンチェック
execute store result score $World Calc run data get storage v13alpha: Version.Minor
execute store result score $World _ run data get storage v13alpha: UpdatingVersion.Minor

execute if score $World Calc > $World _ run data modify storage v13alpha: Text append value '{"translate":"[System] 古いバージョンです。最新のデータパックをDLしてください。"}'
execute if score $World Calc > $World _ run data modify storage v13alpha: UpdatingVersion.Old set value 1b
execute if score $World Calc = $World _ run data modify storage v13alpha: Text append value '{"translate":"[System] 最新のバージョンです。"}'
execute if score $World Calc < $World _ run data modify storage v13alpha: Text append value '{"translate":"[System] 正常にアップデートされました。"}'
execute if score $World Calc < $World _ run function settings:version_update/update/
