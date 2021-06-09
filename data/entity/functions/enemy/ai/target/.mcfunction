##Target処理
execute store result storage mob_data: AI.Turn[0].Target.Radius_check int 1 run data get storage mob_data: AI.Turn[0].Target.Radius 10
execute if data storage mob_data: AI.Turn[0].Target{Look:"player"} facing entity @p feet run function entity:enemy/target/player
execute if data storage mob_data: AI.Turn[0].Target{Look:"enemy"} facing entity @e[tag=Mob,distance=0.01..,sort=nearest,limit=1] feet run function entity:enemy/target/enemy
execute if data storage mob_data: AI.Turn[0].Target{Look:"all"} facing entity @e[predicate=entity:all_mob,distance=0.01..,sort=nearest,limit=1] feet run function entity:enemy/target/all
