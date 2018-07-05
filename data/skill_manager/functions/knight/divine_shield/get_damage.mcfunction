##############################
### ディバインシールドダメージ取得
##############################

execute if entity @s[advancements={skill_manager:divine_shield={4_damage_taken=true}}] run scoreboard players set $Damage Global 400
execute if entity @s[advancements={skill_manager:divine_shield={8_damage_taken=true}}] run scoreboard players set $Damage Global 800
execute if entity @s[advancements={skill_manager:divine_shield={12_damage_taken=true}}] run scoreboard players set $Damage Global 1200
execute if entity @s[advancements={skill_manager:divine_shield={16_damage_taken=true}}] run scoreboard players set $Damage Global 1600
execute if entity @s[advancements={skill_manager:divine_shield={20_damage_taken=true}}] run scoreboard players set $Damage Global 2000
execute if entity @s[advancements={skill_manager:divine_shield={24_damage_taken=true}}] run scoreboard players set $Damage Global 2400
execute if entity @s[advancements={skill_manager:divine_shield={28_damage_taken=true}}] run scoreboard players set $Damage Global 2800
execute if entity @s[advancements={skill_manager:divine_shield={32_damage_taken=true}}] run scoreboard players set $Damage Global 3200
execute if entity @s[advancements={skill_manager:divine_shield={36_damage_taken=true}}] run scoreboard players set $Damage Global 3600
execute if entity @s[advancements={skill_manager:divine_shield={40_damage_taken=true}}] run scoreboard players set $Damage Global 4000
execute if entity @s[advancements={skill_manager:divine_shield={44_damage_taken=true}}] run scoreboard players set $Damage Global 4400
execute if entity @s[advancements={skill_manager:divine_shield={48_damage_taken=true}}] run scoreboard players set $Damage Global 4800
execute if entity @s[advancements={skill_manager:divine_shield={52_damage_taken=true}}] run scoreboard players set $Damage Global 5200
execute if entity @s[advancements={skill_manager:divine_shield={56_damage_taken=true}}] run scoreboard players set $Damage Global 5600
execute if entity @s[advancements={skill_manager:divine_shield={60_damage_taken=true}}] run scoreboard players set $Damage Global 6000
execute if entity @s[advancements={skill_manager:divine_shield={64_damage_taken=true}}] run scoreboard players set $Damage Global 6400
execute if entity @s[advancements={skill_manager:divine_shield={68_damage_taken=true}}] run scoreboard players set $Damage Global 6800
execute if entity @s[advancements={skill_manager:divine_shield={72_damage_taken=true}}] run scoreboard players set $Damage Global 7200
execute if entity @s[advancements={skill_manager:divine_shield={76_damage_taken=true}}] run scoreboard players set $Damage Global 7600
execute if entity @s[advancements={skill_manager:divine_shield={80_damage_taken=true}}] run scoreboard players set $Damage Global 8000
execute if entity @s[advancements={skill_manager:divine_shield={84_damage_taken=true}}] run scoreboard players set $Damage Global 8400
execute if entity @s[advancements={skill_manager:divine_shield={88_damage_taken=true}}] run scoreboard players set $Damage Global 8800
execute if entity @s[advancements={skill_manager:divine_shield={92_damage_taken=true}}] run scoreboard players set $Damage Global 9200
execute if entity @s[advancements={skill_manager:divine_shield={96_damage_taken=true}}] run scoreboard players set $Damage Global 9600
execute if entity @s[advancements={skill_manager:divine_shield={100_damage_taken=true}}] run scoreboard players set $Damage Global 10000
execute if entity @s[advancements={skill_manager:divine_shield={104_damage_taken=true}}] run scoreboard players set $Damage Global 10400
execute if entity @s[advancements={skill_manager:divine_shield={108_damage_taken=true}}] run scoreboard players set $Damage Global 10800
execute if entity @s[advancements={skill_manager:divine_shield={112_damage_taken=true}}] run scoreboard players set $Damage Global 11200
execute if entity @s[advancements={skill_manager:divine_shield={116_damage_taken=true}}] run scoreboard players set $Damage Global 11600
execute if entity @s[advancements={skill_manager:divine_shield={120_damage_taken=true}}] run scoreboard players set $Damage Global 12000
execute if entity @s[advancements={skill_manager:divine_shield={124_damage_taken=true}}] run scoreboard players set $Damage Global 12400
execute if entity @s[advancements={skill_manager:divine_shield={128_damage_taken=true}}] run scoreboard players set $Damage Global 12800
execute if entity @s[advancements={skill_manager:divine_shield={132_damage_taken=true}}] run scoreboard players set $Damage Global 13200
execute if entity @s[advancements={skill_manager:divine_shield={136_damage_taken=true}}] run scoreboard players set $Damage Global 13600
execute if entity @s[advancements={skill_manager:divine_shield={140_damage_taken=true}}] run scoreboard players set $Damage Global 14000
execute if entity @s[advancements={skill_manager:divine_shield={144_damage_taken=true}}] run scoreboard players set $Damage Global 14400
execute if entity @s[advancements={skill_manager:divine_shield={148_damage_taken=true}}] run scoreboard players set $Damage Global 14800
execute if entity @s[advancements={skill_manager:divine_shield={150_damage_taken=true}}] run scoreboard players set $Damage Global 15000

execute if score @s ModeSkill matches 11031 run scoreboard players operation $Damage Global *= $8 Const
execute if score @s ModeSkill matches 11032 run scoreboard players operation $Damage Global *= $12 Const
execute if score @s ModeSkill matches 11033 run scoreboard players operation $Damage Global *= $18 Const

execute if score @s ModeSkill matches 11031 run scoreboard players operation $Damage Global < $100000 Const
execute if score @s ModeSkill matches 11032 run scoreboard players operation $Damage Global < $200000 Const
execute if score @s ModeSkill matches 11033 run scoreboard players operation $Damage Global < $300000 Const
