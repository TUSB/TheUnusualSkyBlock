#> player:burst/add

scoreboard players operation _ Burst = @s XP
scoreboard players operation _ Burst -= @s BeforeXP
scoreboard players operation @s Burst += _ Burst

function player:burst/bar/set

scoreboard players set @s BurstTimer 20

# 経験値バーリセット
function player:mp_bar/set
