#> main:version_update/check/major
#メジャーバージョンチェック
execute store result score $World Calc run data get storage v13alpha: Version.Major
execute store result score $World _ run data get storage v13alpha: UpdatingVersion.Major

execute unless score $World Calc = $World _ run data modify storage v13alpha: Text append value '{"translate":"[System] 古いバージョンです。ワールド本体の更新が必要です。"}'
execute unless score $World Calc = $World _ run data modify storage v13alpha: UpdatingVersion.Old set value 1b
execute if score $World Calc = $World _ run function settings:version_update/check/minor
