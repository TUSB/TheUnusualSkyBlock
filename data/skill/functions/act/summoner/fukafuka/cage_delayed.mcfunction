
### ふかふかケージ遅延処理

#2tickに1回
execute store result score _ Calc run time query gametime
scoreboard players set _ _ 2
scoreboard players operation _ Calc %= _ _
execute if score _ Calc matches 0 run function skill:act/summoner/fukafuka/cage_delayed_apply

tag @s remove Caught
