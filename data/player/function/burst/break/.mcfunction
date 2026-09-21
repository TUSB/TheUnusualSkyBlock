#> player:burst/break/

execute store result score @s BurstTimer run data get storage tusb_player: burst_config.burst_break.reset_time

tellraw @s {"translate":"バーストブレイク！！","color":"gold","italic":true,"bold":true}

# 周囲の敵、スポナーにダメージ
function player:burst/break/damage/enemy
function player:burst/break/damage/spawner/


tag @s add BurstBreak
function player:burst/bar/set

# 演出
function makeup:skill/burst/break
