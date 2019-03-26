##############################
### エフェクト選択
##############################

execute if entity @s[tag=CancelSpeed] run function enemy_manager:occurrence/effect_cancel/speed
execute if entity @s[tag=CancelHaste] run function enemy_manager:occurrence/effect_cancel/haste
execute if entity @s[tag=CancelStrength] run function enemy_manager:occurrence/effect_cancel/strength
execute if entity @s[tag=CancelJumpBoost] run function enemy_manager:occurrence/effect_cancel/jump_boost
execute if entity @s[tag=CancelRegeneration] run function enemy_manager:occurrence/effect_cancel/regeneration
execute if entity @s[tag=CancelResistance] run function enemy_manager:occurrence/effect_cancel/resistance
execute if entity @s[tag=CancelFireResistance] run function enemy_manager:occurrence/effect_cancel/fire_resistance
execute if entity @s[tag=CancelWaterBreathing] run function enemy_manager:occurrence/effect_cancel/water_breathing
execute if entity @s[tag=CancelNightVision] run function enemy_manager:occurrence/effect_cancel/night_vision
execute if entity @s[tag=CancelAbsorption] run function enemy_manager:occurrence/effect_cancel/absorption
execute if entity @s[tag=CancelSlowFalling] run function enemy_manager:occurrence/effect_cancel/slow_falling
execute if entity @s[tag=CancelConduitPower] run function enemy_manager:occurrence/effect_cancel/conduit_power
execute if entity @s[tag=CancelDolphinsGrace] run function enemy_manager:occurrence/effect_cancel/dolphins_grace