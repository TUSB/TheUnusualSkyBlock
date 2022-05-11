##Target処理

#Target有無フラグをリセット
scoreboard players set @s _ 0
#Radiusを倍で取得
execute store result score _ Calc run data get storage mob_data: Target.Radius 2

execute if data storage mob_data: Target{Look:"Player"} facing entity @a[gamemode=!creative,gamemode=!spectator,tag=!NonTarget,sort=nearest,limit=1] feet run function enemy:ai/call/settings/target/player
execute if data storage mob_data: Target{Look:"Friendly"} facing entity @e[predicate=entity:friendly,tag=!NonTarget,sort=nearest,limit=1] feet run function enemy:ai/call/settings/target/friendly
execute if data storage mob_data: Target{Look:"Enemy"} facing entity @e[tag=Enemy,tag=!NonTarget,sort=nearest,limit=1] feet run function enemy:ai/call/settings/target/enemy
execute if data storage mob_data: Target{Look:"All"} facing entity @e[predicate=entity:all_mob,tag=!NonTarget,sort=nearest,limit=1] feet run function enemy:ai/call/settings/target/all
