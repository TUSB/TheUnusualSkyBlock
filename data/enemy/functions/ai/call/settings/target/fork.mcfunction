##Target処理

#Target有無フラグをリセット
scoreboard players set @s _ 0
#現在位置に0-0-0-0-2をtp => 最低半径まで移動
#tellraw @p [{"text":"be "},{"entity":"@s","nbt":"Pos"}]
#execute if data storage mob_data: Target.MinRadius at @s run function enemy:ai/call/settings/target/min_radius
#tellraw @p [{"text":"af "},{"entity":"@s","nbt":"Pos"}]
tp @s ^ ^ ^
#Radiusを倍で取得
execute store result score _ Calc run data get storage mob_data: Target.Radius 2
#Radius - MinRadius
execute store result score _ _ run data get storage mob_data: Target.MinRadius -2
scoreboard players operation _ _ += _ Calc

execute if data storage mob_data: Target{Look:"Player"} at @a[gamemode=!creative,gamemode=!spectator,tag=!NonTarget,sort=nearest,limit=1] facing entity @s feet run tp 0-0-0-0-1 ^ ^ ^ ~ ~
execute if data storage mob_data: Target{Look:"Friendly"} at @e[predicate=entity:friendly,tag=!NonTarget,sort=nearest,limit=1] facing entity @s feet run tp 0-0-0-0-1 ^ ^ ^ ~ ~
execute if data storage mob_data: Target{Look:"Enemy"} at @e[tag=Enemy,tag=!NonTarget,sort=nearest,limit=1] facing entity @s feet run tp 0-0-0-0-1 ^ ^ ^ ~ ~
execute if data storage mob_data: Target{Look:"All"} at @e[predicate=entity:all_mob,tag=!NonTarget,sort=nearest,limit=1] facing entity @s feet run tp 0-0-0-0-1 ^ ^ ^ ~ ~
execute if data storage mob_data: Target{Look:"Mob"} at @e[tag=Mob,tag=!NonTarget,sort=nearest,limit=1] facing entity @s feet run tp 0-0-0-0-1 ^ ^ ^ ~ ~

execute at 0-0-0-0-1 run function enemy:ai/call/settings/target/loop

#Target解除
execute as 0-0-0-0-1 run function calc:geometry/return_marker
