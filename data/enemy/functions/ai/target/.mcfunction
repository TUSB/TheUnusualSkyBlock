##Target処理
#Radiusを倍で取得
execute store result score _ Calc run data get storage mob_data: Target.Radius 2

execute if data storage mob_data: Target{Look:"player"} facing entity @a[gamemode=!creative,gamemode=!spectator,sort=nearest,limit=1] feet run function enemy:ai/target/player
execute if data storage mob_data: Target{Look:"enemy"} facing entity @e[tag=Mob,distance=0.01..,sort=nearest,limit=1] feet run function enemy:ai/target/enemy
execute if data storage mob_data: Target{Look:"all"} facing entity @e[predicate=entity:all_mob,distance=0.01..,sort=nearest,limit=1] feet run function enemy:ai/target/all
