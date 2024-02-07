##############################
### ボミオストラップ発動
##############################

#AEC召喚
#ReapplicationDelay: Level
execute if score _ Level matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.01f,Particle:"minecraft:angry_villager",ReapplicationDelay:1,Duration:300,Tags:[Skill,DecelerateTrap,NativeTask]}
execute if score _ Level matches 2 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.01f,Particle:"minecraft:angry_villager",ReapplicationDelay:2,Duration:300,Tags:[Skill,DecelerateTrap,NativeTask]}
execute if score _ Level matches 3 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.01f,Particle:"minecraft:angry_villager",ReapplicationDelay:3,Duration:300,Tags:[Skill,DecelerateTrap,NativeTask]}
