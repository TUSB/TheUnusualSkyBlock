#ランダムな穴にTP
execute store result score _ Calc run function calc:random
scoreboard players set _ _ 40
scoreboard players operation _ Calc %= _ _

function area:system/void/teleport0

advancement revoke @s only area:system/void/fall
