#> player:one_second
# -> 10秒処理
execute if score $Seconds Count matches 0 run function player:ten_seconds

###状態異常耐性
execute if entity @s[scores={ResistEffects=1..}] run function effects:resist
scoreboard players reset @s[scores={ResistLock=1..}] ResistLock

###特殊デバフ処理
execute if entity @s[scores={BurnCount=0..}] run function effect:burn/tick
execute if entity @s[scores={ConfuseCount=1..}] run function effect:confuse/tick
execute if entity @s[scores={DoomCount=1..}] run function effect:doom/proceed
execute if entity @s[scores={PalsyLevel=1..}] run function effect:palsy/tick
execute if entity @s[scores={TntCount=0..}] if block ~ ~ ~ water run function effect:tnt/cure
execute if entity @s[scores={VirusCount=1..}] run function effect:virus/tick

# 祈り表示
execute if entity @s[scores={Job=1..},tag=Pray] run function player:pray
