#Function
function oh_my_dat:please
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CombatHusk.TargetID int 1 run scoreboard players get @a[gamemode=!spectator,gamemode=!creative,sort=nearest,limit=1] OhMyDatID
