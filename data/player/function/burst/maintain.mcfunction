#> player:burst/maintain

execute store result storage tusb_player: burst.id int 1 run scoreboard players get @s OhMyDatID

scoreboard players remove @s BurstTimer 1

function player:burst/bar/warn with storage tusb_player: burst

execute if score @s BurstTimer matches 1.. run return 1

scoreboard players set @s Burst 0
function player:burst/bar/set with storage tusb_player: burst
