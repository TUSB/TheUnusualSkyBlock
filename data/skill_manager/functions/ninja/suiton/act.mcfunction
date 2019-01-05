##############################
### 水遁発動
##############################

scoreboard players set @s Suiton 180
tellraw @s [{"text":"","color":"green"},{"selector":"@s"},"に",{"text":"水遁","color":"white","hoverEvent":{"action":"show_text","value":"潜水中の活動能力が大幅に上昇する。","color":"white"}},"の効果！"]
execute if score @s SupportSkill matches 22022 run function skill_manager:ninja/suiton/affinity/apply

###---演出---Start
playsound minecraft:ambient.underwater.enter master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:ambient.underwater.enter master @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:entity.fish.swim master @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:splash ~ ~0.5 ~ 0.6 0.2 0.6 0 100 force @a[tag=ShowParticles]
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"minecraft:entity_effect",ReapplicationDelay:40,Radius:2f,Duration:20,Color:61183}
###---演出---End
