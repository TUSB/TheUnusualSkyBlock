#Function
# レベルを半分にしてから召喚する
    summon armor_stand ~ ~ ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{}]]}}]}
# レベルを設定
    scoreboard players operation _ Level = @s Level
    scoreboard players set _ _ 2
    scoreboard players operation _ Level /= _ _
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 5
    scoreboard players operation _ Random %= _ _
    scoreboard players operation _ Level += _ Random
    data modify storage mob_data: Call.SpawnEntities set value [[{Tags:[Global,Sky,Shoot,PoisonEye,Main,SpawnParticles],Level:25}],[{Tags:[Global,Sky,Shoot,PoisonEye,PoisonBallMarker],Level:25}]]
    execute as @e[tag=Spawn,tag=!CallSpawned,distance=0] run function skill:enemy/spawn/apply
# 音
    playsound minecraft:block.respawn_anchor.set_spawn hostile @a ~ ~ ~ 1 2 0
