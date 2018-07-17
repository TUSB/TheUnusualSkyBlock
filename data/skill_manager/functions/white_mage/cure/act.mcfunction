##############################
### ケアル発動
##############################

execute if score @s ModeSkill matches 41011 run scoreboard players set $Cure Global 10
execute if score @s ModeSkill matches 41012 run scoreboard players set $Cure Global 30
execute if score @s ModeSkill matches 41013 run scoreboard players set $Cure Global 80
execute if score @s ModeSkill matches 41014 run scoreboard players set $Cure Global 200
execute if score @s ModeSkill matches 41015 run scoreboard players set $Cure Global 500

execute if score @s SneakTime matches ..0 run function skill_manager:white_mage/cure/apply
execute if score @s SneakTime matches 1.. as @a[distance=..15] at @s run function skill_manager:white_mage/cure/apply
