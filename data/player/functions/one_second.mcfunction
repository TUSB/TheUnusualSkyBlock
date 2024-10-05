##############################
### プレイヤー毎秒処理
##############################

###状態異常耐性
execute if entity @s[scores={ResistEffects=1..}] run function effects:resist
scoreboard players reset @s[scores={ResistLock=1..}] ResistLock

###特殊デバフ処理
execute if entity @s[scores={BurnCount=0..}] run function effects:burn/tick
execute if entity @s[scores={ConfuseCount=1..}] run function effects:confuse/tick
execute if entity @s[scores={DoomCount=1..}] run function effects:doom/proceed
execute if entity @s[scores={PalsyLevel=1..}] run function effects:palsy/tick
execute if entity @s[scores={TntCount=0..}] if block ~ ~ ~ water run function effects:tnt/cure
execute if entity @s[scores={VirusCount=1..}] run function effects:virus/tick

#エリア外死亡処理
execute unless predicate entity:kill_check run kill @s

###各エリア処理
execute as @a[predicate=area:system/underworld/in_water] run function area:system/underworld/food_rot

# 祈り表示

execute if data storage area: capture.skylands.002 run scoreboard players enable @s[scores={Job=1..},tag=Pray] kill
execute if data storage area: capture.skylands.002 run tellraw @s[scores={Job=1..},tag=Pray] [{"translate":"[最終手段]","bold":true,"color":"gray"}," ",{"translate":"祈りを捧げる","color":"dark_aqua","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger kill set 1"},"hoverEvent":{"action":"show_text","contents":[{"translate":"/kill","color":"red"}]}}]
execute if data storage area: capture.skylands.002 run tag @s[scores={Job=1..},tag=Pray] remove Pray

### 10秒処理
execute if score $Seconds Count matches 0 run function player:ten_seconds
