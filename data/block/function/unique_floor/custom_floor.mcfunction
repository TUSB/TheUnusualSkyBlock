#> block:unique_floor/custom_floor
### カスタム床処理
# execute if data block ~ ~ ~ {TrackOutput:true} を条件に付けることで、単発実行になる
execute store result storage tusb_player: _ long 1 run time query gametime
execute store result block ~ ~-2 ~ TrackOutput byte 1 run data modify storage tusb_player: _ set from block ~ ~-2 ~ LastExecution
clone ~ ~-2 ~ ~ ~-2 ~ ~ ~-2 ~ filtered command_block force
