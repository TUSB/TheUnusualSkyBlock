#> effect:status/modify_max
### 最大体力を調整する

function job:status/operation_start

#全ての職業のレベルの総和を求める
function job:status/call
execute store result storage job: JobStatus[-9].Level int 1 run scoreboard players get @s Level
scoreboard players set _ _ 50
scoreboard players set @s MPMax 100
execute store result score _ Level run data get storage job: JobStatus[1].Level
scoreboard players operation _ Level < _ _
scoreboard players operation @s MPMax += _ Level
execute store result score _ Level run data get storage job: JobStatus[2].Level
scoreboard players operation _ Level < _ _
scoreboard players operation @s MPMax += _ Level
execute store result score _ Level run data get storage job: JobStatus[3].Level
scoreboard players operation _ Level < _ _
scoreboard players operation @s MPMax += _ Level
execute store result score _ Level run data get storage job: JobStatus[4].Level
scoreboard players operation _ Level < _ _
scoreboard players operation @s MPMax += _ Level
execute store result score _ Level run data get storage job: JobStatus[5].Level
scoreboard players operation _ Level < _ _
scoreboard players operation @s MPMax += _ Level
execute store result score _ Level run data get storage job: JobStatus[6].Level
scoreboard players operation _ Level < _ _
scoreboard players operation @s MPMax += _ Level
execute store result score _ Level run data get storage job: JobStatus[7].Level
scoreboard players operation _ Level < _ _
scoreboard players operation @s MPMax += _ Level
execute store result score _ Level run data get storage job: JobStatus[8].Level
scoreboard players operation _ Level < _ _
scoreboard players operation @s MPMax += _ Level
execute store result score @s Luck run attribute @s minecraft:generic.luck get 10
scoreboard players operation @s MPMax += @s Luck

#体力リセット
attribute @s generic.max_health modifier remove 0-0-0-1-0
attribute @s generic.max_health modifier remove 0-0-0-2-0
attribute @s generic.max_health modifier remove 0-0-0-4-0
attribute @s generic.max_health modifier remove 0-0-0-8-0
attribute @s generic.max_health modifier remove 0-0-0-16-0
attribute @s generic.max_health modifier remove 0-0-0-32-0
attribute @s generic.max_health modifier remove 0-0-0-64-0
attribute @s generic.max_health modifier remove 0-0-0-128-0
attribute @s generic.max_health modifier remove 0-0-0-256-0
attribute @s generic.max_health modifier remove 0-0-0-512-0
attribute @s generic.max_health modifier remove 0-0-0-1024-0
attribute @s generic.max_health modifier remove 0-0-0-2048-0
attribute @s generic.max_health modifier remove 0-0-0-4096-0
attribute @s generic.max_health modifier remove 0-0-0-8192-0

# MP16383まで対応
scoreboard players set _ _ 131072
scoreboard players operation _ HPMax = @s MPMax
scoreboard players operation _ HPMax -= @s Luck
scoreboard players operation @s HPMax = _ HPMax
scoreboard players operation _ HPMax *= _ _
scoreboard players set _ _ 2

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s generic.max_health modifier add 0-0-0-8192-0 "tusb:max_health" 3276.8 add

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s generic.max_health modifier add 0-0-0-4096-0 "tusb:max_health" 1638.4 add

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s generic.max_health modifier add 0-0-0-2048-0 "tusb:max_health" 819.2 add

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s generic.max_health modifier add 0-0-0-1024-0 "tusb:max_health" 409.6 add

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s generic.max_health modifier add 0-0-0-512-0 "tusb:max_health" 204.8 add

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s generic.max_health modifier add 0-0-0-256-0 "tusb:max_health" 102.4 add

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s generic.max_health modifier add 0-0-0-128-0 "tusb:max_health" 51.2 add

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s generic.max_health modifier add 0-0-0-64-0 "tusb:max_health" 25.6 add

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s generic.max_health modifier add 0-0-0-32-0 "tusb:max_health" 12.8 add

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s generic.max_health modifier add 0-0-0-16-0 "tusb:max_health" 6.4 add

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s generic.max_health modifier add 0-0-0-8-0 "tusb:max_health" 3.2 add

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s generic.max_health modifier add 0-0-0-4-0 "tusb:max_health" 1.6 add

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s generic.max_health modifier add 0-0-0-2-0 "tusb:max_health" 0.8 add

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s generic.max_health modifier add 0-0-0-1-0 "tusb:max_health" 0.4 add
