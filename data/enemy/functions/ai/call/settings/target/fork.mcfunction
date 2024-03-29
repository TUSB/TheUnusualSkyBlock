##Target処理

#Target有無フラグをリセット
scoreboard players set @s _ 0
scoreboard players set @s Calc 0
#Radiusを倍で取得
execute store result score # Calc run data get storage mob_data: Target.Radius 2
#Radius - MinRadius
execute store result score _ _ run data get storage mob_data: Target.MinRadius -2
scoreboard players operation _ _ += # Calc

execute if data storage mob_data: Target{Look:"Player"} store success score @s Calc at @a[gamemode=!creative,gamemode=!spectator,tag=!NonTarget,sort=nearest,limit=1] run tp 0-0-0-0-0 ^ ^ ^ ~ ~
execute if data storage mob_data: Target{Look:"Friendly"} store success score @s Calc at @e[predicate=entity:friendly,tag=!NonTarget,sort=nearest,limit=1] run tp 0-0-0-0-0 ^ ^ ^ ~ ~
execute if data storage mob_data: Target{Look:"Enemy"} store success score @s Calc at @e[tag=Enemy,tag=!NonTarget,sort=nearest,limit=1] run tp 0-0-0-0-0 ^ ^ ^ ~ ~
execute if data storage mob_data: Target{Look:"All"} store success score @s Calc at @e[predicate=entity:all_mob,tag=!NonTarget,sort=nearest,limit=1] run tp 0-0-0-0-0 ^ ^ ^ ~ ~
execute if data storage mob_data: Target{Look:"Mob"} store success score @s Calc at @e[tag=Mob,tag=!NonTarget,sort=nearest,limit=1] run tp 0-0-0-0-0 ^ ^ ^ ~ ~
execute if data storage mob_data: Target{Look:"Parent"} run function enemy:ai/call/settings/target/parent
execute if data storage mob_data: Target{Look:"Child"} run function enemy:ai/call/settings/target/child

execute if score @s Calc matches 1 at @s facing entity 0-0-0-0-0 feet facing ^ ^ ^-1 positioned as 0-0-0-0-0 run function enemy:ai/call/settings/target/loop

#Target解除
execute as 0-0-0-0-0 run function calc:geometry/return_marker
