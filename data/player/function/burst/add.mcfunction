#> player:burst/add

scoreboard players operation _ Burst = @s XP
scoreboard players operation _ Burst -= @s BeforeXP
scoreboard players operation @s Burst += _ Burst

execute store result storage tusb_player: burst.id int 1 run scoreboard players get @s OhMyDatID
function player:burst/bar/set with storage tusb_player: burst

scoreboard players set @s BurstTimer 20

# 経験値バーリセット
function player:mp_bar/set
