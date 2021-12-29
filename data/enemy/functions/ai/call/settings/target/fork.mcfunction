##Target処理
### ai/tickではas 0-0-0-0-2 それ以外では0-0-0-0-Xで実行

#Target有無フラグをリセット
scoreboard players set @s _ 0
#Radiusを倍で取得
execute store result score _ Calc run data get storage mob_data: Target.Radius 2

execute if data storage mob_data: Target{Look:"Player"} facing entity @a[gamemode=!creative,gamemode=!spectator,sort=nearest,limit=1] feet run function enemy:ai/call/settings/target/player
execute if data storage mob_data: Target{Look:"Friendly"} facing entity @e[gamemode=!creative,gamemode=!spectator,team=Friendly,sort=nearest,limit=1] feet run function enemy:ai/call/settings/target/friendly
execute if data storage mob_data: Target{Look:"Enemy"} facing entity @e[tag=Mob,distance=0.01..,sort=nearest,limit=1] feet run function enemy:ai/call/settings/target/enemy
execute if data storage mob_data: Target{Look:"All"} facing entity @e[predicate=entity:all_mob,distance=0.01..,sort=nearest,limit=1] feet run function enemy:ai/call/settings/target/all
