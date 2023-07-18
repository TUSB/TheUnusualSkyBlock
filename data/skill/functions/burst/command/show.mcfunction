### バーストコマンド生成

function skill:burst/command/reset
summon area_effect_cloud ^ ^ ^ {Tags:[BurstCommand,Center],Duration:80,CustomNameVisible:1b}

execute positioned ^ ^2.6 ^ run function skill:burst/command/edge
execute positioned ^-2.25 ^1.3 ^ run function skill:burst/command/edge
execute positioned ^-2.25 ^-1.3 ^ run function skill:burst/command/edge
execute positioned ^2.25 ^-1.3 ^ run function skill:burst/command/edge
execute positioned ^2.25 ^1.3 ^ run function skill:burst/command/edge
execute positioned ^ ^-2.6 ^ run function skill:burst/command/edge

# ランダムに3体のみにする
kill @e[tag=BurstCommand,tag=!Initialized,tag=!Center,distance=..3,sort=random,limit=3]

execute as @e[tag=BurstCommand,tag=!Initialized,distance=..3] positioned as @s run tp @s ~ ~ ~ ~ ~
scoreboard players operation @e[tag=BurstCommand,tag=!Initialized,distance=..3] ParentID = @s OhMyDatID

scoreboard players set @s Burst 80

function makeup:skill/burst/command/show
