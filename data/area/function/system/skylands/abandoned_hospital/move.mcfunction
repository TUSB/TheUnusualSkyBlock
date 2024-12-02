#> area:system/skylands/abandoned_hospital/move
execute in area:skylands positioned -114.5 185.5 -664.5 at @e[tag=HospitalGimmic,distance=..5] run clone ~ ~ ~ ~2 ~5 ~2 ~ ~ ~1 masked move
execute in area:skylands positioned -114.5 185.5 -664.5 at @e[tag=HospitalGimmic,distance=..5] run function makeup:area/system/skylands/hospital_gimmic
execute in area:skylands positioned -114.5 185.5 -664.5 as @e[tag=HospitalGimmic,distance=..5] at @s run tp @s ~ ~ ~1



execute store result storage area: hospital_gimmic int 1 run data get storage area: hospital_gimmic 0.999999999
execute unless data storage area: {hospital_gimmic:0} run schedule function area:system/skylands/abandoned_hospital/move 30t replace
execute if data storage area: {hospital_gimmic:0} in area:skylands positioned -114.5 185.5 -664.5 run kill @e[tag=HospitalGimmic]
execute if data storage area: {hospital_gimmic:0} run data remove storage area: hospital_gimmic
