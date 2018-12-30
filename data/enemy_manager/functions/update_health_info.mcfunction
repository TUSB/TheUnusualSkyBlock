##############################
### モブの体力とダメージの更新
##############################

### ダメージ量計算
scoreboard players operation @s LastDamage = @s PreviousMobHP
scoreboard players operation @s LastDamage -= $CurrentHP Global
scoreboard players operation @s PreviousMobHP = $CurrentHP Global

execute if score $Debug Settings matches 1.. run function calc_manager:tellraw/show_damage

###---演出---Start
execute anchored eyes positioned ^ ^ ^ run particle minecraft:damage_indicator ~ ~ ~ 0.1 0.1 0.1 0.5 10 force @a[tag=ShowParticles]
###---演出---End
