##Target処理
### ai/tickではas 0-0-0-0-2 それ以外では0-0-0-0-Xで実行

#Target有無フラグをリセット
scoreboard players set @s _ 0
#Radiusを倍で取得
execute store result score _ Calc run data get storage mob_data: Target.Radius 2
#自身が対象にならないようにMobタグを一時的に外す
execute store success storage mob_data: Mob byte 1 run tag @s remove Mob

execute if data storage mob_data: Target{Look:"player"} facing entity @a[gamemode=!creative,gamemode=!spectator,sort=nearest,limit=1] feet run function enemy:ai/target/player
execute if data storage mob_data: Target{Look:"enemy"} facing entity @e[tag=Mob,distance=0.01..,sort=nearest,limit=1] feet run function enemy:ai/target/enemy
execute if data storage mob_data: Target{Look:"all"} facing entity @e[predicate=entity:all_mob,distance=0.01..,sort=nearest,limit=1] feet run function enemy:ai/target/all

#Mobタグ復元
execute if data storage mob_data: {Mob:1b} run tag @s add Mob
