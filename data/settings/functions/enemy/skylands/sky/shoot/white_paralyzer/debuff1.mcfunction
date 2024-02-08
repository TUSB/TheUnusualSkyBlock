#Function
# #oh_my_datを退避
    data modify storage mob_data: OhMyDatID set from storage oh_my_dat: last_id
# 対象を特定
    execute as @a[predicate=entity:player,distance=..0.5,sort=nearest,limit=1] run function settings:enemy/skylands/sky/shoot/white_paralyzer/debuff2
# #oh_my_datをもとに戻す
    execute store result score _ OhMyDatID run data get storage mob_data: OhMyDatID
    function oh_its_dat:please
# リセット
    data remove storage mob_data: OhMyDatID
