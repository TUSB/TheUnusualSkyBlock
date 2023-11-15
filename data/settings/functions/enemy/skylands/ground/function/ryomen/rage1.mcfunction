#Function
# 自身を除いた近くにいる仲間を強化する
    data modify storage mob_data: Call.Tags set value ["Enemy","Ryomen"]
    execute as @e[distance=0.01..8,type=zombie,tag=Ryomen,tag=!RyomenRage] run function settings:enemy/skylands/ground/function/ryomen/rage2
# Oh_my_datを起動
    function #oh_my_dat:please
