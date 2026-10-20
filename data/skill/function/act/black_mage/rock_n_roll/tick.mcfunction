
### ロックンロール回転

scoreboard players operation _ TrackingID = @s OhMyDatID

execute as @e[tag=RockNRoll] if score @s TrackingID = _ TrackingID run function skill:act/black_mage/rock_n_roll/attack

function makeup:skill/act/black_mage/rock_n_roll/tick

scoreboard players remove @s RockNRoll 1
scoreboard players reset @s[scores={RockNRoll=..0}] RockNRoll
