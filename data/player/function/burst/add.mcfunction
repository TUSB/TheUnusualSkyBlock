#> player:burst/add

# バーストブレイクしていたら増加なし
scoreboard players operation _ Burst = @s XP
scoreboard players operation _ Burst -= @s BeforeXP
scoreboard players operation @s[tag=!BurstBreak] Burst += _ Burst

function player:burst/bar/set

execute store result score @s[tag=!BurstBreak] BurstTimer run data get storage tusb_player: burst_config.reset_time

# 経験値バーリセット
function player:mp_bar/set
