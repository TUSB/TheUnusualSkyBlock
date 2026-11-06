#> player:burst/maintain

scoreboard players remove @s BurstTimer 1

function player:burst/bar/warn

execute if score @s BurstTimer matches 1.. run return 1

scoreboard players set @s Burst 0
function player:burst/bar/set
