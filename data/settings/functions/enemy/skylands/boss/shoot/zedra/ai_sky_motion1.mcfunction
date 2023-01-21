#Function
data modify entity @s Tags set from storage mob_data: Tags
execute if entity @s[tag=SkyMotion] run function settings:enemy/skylands/boss/shoot/zedra/ai_sky_motion2
