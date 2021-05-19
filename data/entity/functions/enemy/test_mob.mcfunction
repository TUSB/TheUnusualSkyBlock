summon husk ~ ~ ~ {Tags:["now_spawn"],PortalCooldown:100}

execute as @e[tag=now_spawn] run function oh_my_dat:please
scoreboard players operation _ OhMyDatID = @s OhMyDatID 
function oh_its_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Data set value ["Death","Time","aPassenger","Skill","Mob"]
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Death set value "test1"
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Time set value "test2"
#Type(上:up,下:down) Check(いない時に実行:0b,いる時に実行:1b) Call(passenger_callに合わせて記述)
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Passenger set value {Type:"up",Check:1b,Call:"test3"}
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Skill set value [{loInterval:10,highInterval:10,Once:0b,Loop:5,Call:"test4"},{loInterval:10,highInterval:10,Once:0b,Loop:1,Call:"test5"}]

#データを設定
execute as @e[tag=now_spawn] run data modify entity @s Tags set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Data 
