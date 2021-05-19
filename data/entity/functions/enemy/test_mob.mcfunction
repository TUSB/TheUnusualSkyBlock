summon husk ~ ~ ~ {Tags:["now_spawn"],PortalCooldown:100}

execute as @e[tag=now_spawn] run function oh_my_dat:please
scoreboard players operation _ OhMyDatID = @s OhMyDatID 
function oh_its_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Data set value ["aDeath","aTime","Passenger","aSkill"]
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Death set value "test1"
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Time set value "test2"
#Type(上:up,下:down) Check(いない時に実行:0b,いる時に実行:1b) Call(passenger_callに合わせて記述)
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Passenger set value {Type:"down",Check:1b,Call:"test3"}
#この設定だと 445 445 445 5 5 5 5
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Skill set value [{lowInterval:10,highInterval:10,Once:3,Loop:2,Call:"test4"},{lowInterval:10,highInterval:10,Loop:1,Call:"test5"}]

#データを設定
execute as @e[tag=now_spawn] run data modify entity @s Tags set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Data 
