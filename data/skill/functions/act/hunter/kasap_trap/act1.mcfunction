##############################
### ルカナントラップ発動
##############################

#AEC召喚
#ReapplicationDelay: ダメージ増加倍率
execute if score _ Level matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.01f,Particle:"minecraft:angry_villager",ReapplicationDelay:125,Duration:300,Tags:[KasapTrap,NativeTask]}
execute if score _ Level matches 2 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.01f,Particle:"minecraft:angry_villager",ReapplicationDelay:150,Duration:300,Tags:[KasapTrap,NativeTask]}
execute if score _ Level matches 3 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.01f,Particle:"minecraft:angry_villager",ReapplicationDelay:175,Duration:300,Tags:[KasapTrap,NativeTask]}
execute if score _ Level matches 4 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.01f,Particle:"minecraft:angry_villager",ReapplicationDelay:200,Duration:300,Tags:[KasapTrap,NativeTask]}
