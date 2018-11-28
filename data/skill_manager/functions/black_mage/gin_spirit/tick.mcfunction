##############################
### ジン・スピリット処理
##############################

#回転
tp @s ~ ~ ~ ~3 ~
#コウモリ召喚
execute if score @s DecrementTimer matches ..0 if entity @s[tag=DetectDamage] run function skill_manager:black_mage/gin_spirit/summon

###---演出---Start
particle minecraft:smoke ~ ~0.75 ~ 0.1 0.25 0.1 0.001 1 force @a[tag=ShowParticles]
particle minecraft:falling_dust minecraft:magenta_wool ~ ~6 ~ 6 1 6 1 3 force @a[tag=ShowParticles]
particle minecraft:witch ^ ^ ^8 0 0 0 1 0 force @a[tag=ShowParticles]
particle minecraft:witch ^8 ^ ^ 0 0 0 1 0 force @a[tag=ShowParticles]
particle minecraft:witch ^ ^ ^-8 0 0 0 1 0 force @a[tag=ShowParticles]
particle minecraft:witch ^-8 ^ ^ 0 0 0 1 0 force @a[tag=ShowParticles]
###---演出---End
