execute store result score _ _ run bossbar get skill:burst_summoner max
scoreboard players operation _ Burst = @s Burst
scoreboard players operation _ Burst %= _ _

execute if score _ Burst matches ..50 run function skill:burst/summoner/element/reset
execute if score _ Burst matches ..50 run function skill:burst/summoner/element/choice
execute if score _ Burst matches ..50 run function skill:burst/summoner/element/bossbar

execute store result bossbar skill:burst_summoner value run scoreboard players get _ Burst
