#Function
# 見た目ディスプレイを頭の上に載せてAI付与
    ride @e[distance=..16,tag=SonicAMain,limit=1] mount @s
    execute on passengers run tag @s add HasAI
    execute on passengers run tag @s add Unmoved
    execute on passengers run tag @s add SleepgaImmune
    execute on passengers run function #oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"},{Name:"Function",Tags:[Global,Event,Function,CommonExe,PassengersKill]}]}}
    function #oh_my_dat:please
