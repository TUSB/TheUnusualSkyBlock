#Function
# Oh_my_datを退避
    data modify storage mob_data: OhMyDatID set from storage oh_my_dat: last_id
# 自身を除いた近くにいる仲間を強化する
    data modify storage mob_data: Call.Tags set value ["Enemy","Ryomen"]
    execute as @e[distance=0.01..8,type=zombie,tag=Ryomen,tag=!RyomenRage] at @s run function settings:enemy/skylands/ground/function/ryomen/rage2
# Oh_my_datをもとに戻す
    execute store result score _ OhMyDatID run data get storage mob_data: OhMyDatID
    function oh_its_dat:please
# リセット
    data remove storage mob_data: OhMyDatID
