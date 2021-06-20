
### 最大体力を調整する

function job:status/operation_start

#全ての職業のレベルの総和を求める
function job:status/save
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

#体力リセット
attribute @s generic.max_health modifier remove 000-0-0-1-0
attribute @s generic.max_health modifier remove 00-0-0-10-0
attribute @s generic.max_health modifier remove 0-0-0-100-0

#1桁目レベル調整
scoreboard players set _ _ 10
scoreboard players operation _ HPMax = @s MPMax
scoreboard players operation _ HPMax %= _ _

execute if score _ HPMax matches 1 run attribute @s generic.max_health modifier add 000-0-0-1-0 "tusb:max_health" 0.4 add
execute if score _ HPMax matches 2 run attribute @s generic.max_health modifier add 000-0-0-1-0 "tusb:max_health" 0.8 add
execute if score _ HPMax matches 3 run attribute @s generic.max_health modifier add 000-0-0-1-0 "tusb:max_health" 1.2 add
execute if score _ HPMax matches 4 run attribute @s generic.max_health modifier add 000-0-0-1-0 "tusb:max_health" 1.6 add
execute if score _ HPMax matches 5 run attribute @s generic.max_health modifier add 000-0-0-1-0 "tusb:max_health" 2.0 add
execute if score _ HPMax matches 6 run attribute @s generic.max_health modifier add 000-0-0-1-0 "tusb:max_health" 2.4 add
execute if score _ HPMax matches 7 run attribute @s generic.max_health modifier add 000-0-0-1-0 "tusb:max_health" 2.8 add
execute if score _ HPMax matches 8 run attribute @s generic.max_health modifier add 000-0-0-1-0 "tusb:max_health" 3.2 add
execute if score _ HPMax matches 9 run attribute @s generic.max_health modifier add 000-0-0-1-0 "tusb:max_health" 3.6 add

#2桁目レベル調整
scoreboard players operation _ HPMax = @s MPMax
scoreboard players operation _ HPMax /= _ _
scoreboard players operation _ HPMax %= _ _

execute if score _ HPMax matches 1 run attribute @s generic.max_health modifier add 00-0-0-10-0 "tusb:max_health" 04 add
execute if score _ HPMax matches 2 run attribute @s generic.max_health modifier add 00-0-0-10-0 "tusb:max_health" 08 add
execute if score _ HPMax matches 3 run attribute @s generic.max_health modifier add 00-0-0-10-0 "tusb:max_health" 12 add
execute if score _ HPMax matches 4 run attribute @s generic.max_health modifier add 00-0-0-10-0 "tusb:max_health" 16 add
execute if score _ HPMax matches 5 run attribute @s generic.max_health modifier add 00-0-0-10-0 "tusb:max_health" 20 add
execute if score _ HPMax matches 6 run attribute @s generic.max_health modifier add 00-0-0-10-0 "tusb:max_health" 24 add
execute if score _ HPMax matches 7 run attribute @s generic.max_health modifier add 00-0-0-10-0 "tusb:max_health" 28 add
execute if score _ HPMax matches 8 run attribute @s generic.max_health modifier add 00-0-0-10-0 "tusb:max_health" 32 add
execute if score _ HPMax matches 9 run attribute @s generic.max_health modifier add 00-0-0-10-0 "tusb:max_health" 36 add

#3桁目レベル調整
scoreboard players set _ _ 100
scoreboard players operation _ HPMax = @s MPMax
scoreboard players operation _ HPMax /= _ _

execute if score _ HPMax matches 1 run attribute @s generic.max_health modifier add 0-0-0-100-0 "tusb:max_health" 040 add
execute if score _ HPMax matches 2 run attribute @s generic.max_health modifier add 0-0-0-100-0 "tusb:max_health" 080 add
execute if score _ HPMax matches 3 run attribute @s generic.max_health modifier add 0-0-0-100-0 "tusb:max_health" 120 add
execute if score _ HPMax matches 4 run attribute @s generic.max_health modifier add 0-0-0-100-0 "tusb:max_health" 160 add
execute if score _ HPMax matches 5 run attribute @s generic.max_health modifier add 0-0-0-100-0 "tusb:max_health" 200 add
execute if score _ HPMax matches 6 run attribute @s generic.max_health modifier add 0-0-0-100-0 "tusb:max_health" 240 add
execute if score _ HPMax matches 7 run attribute @s generic.max_health modifier add 0-0-0-100-0 "tusb:max_health" 280 add
execute if score _ HPMax matches 8 run attribute @s generic.max_health modifier add 0-0-0-100-0 "tusb:max_health" 320 add
execute if score _ HPMax matches 9 run attribute @s generic.max_health modifier add 0-0-0-100-0 "tusb:max_health" 360 add

