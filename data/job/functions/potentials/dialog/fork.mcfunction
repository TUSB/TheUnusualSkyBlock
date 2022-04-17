
###確認画面表示

execute if score @s PotentialTrigger matches 11 run function job:potentials/dialog/mp_cost
execute if score @s PotentialTrigger matches 12 run function job:potentials/dialog/interval
execute if score @s PotentialTrigger matches 13 run function job:potentials/dialog/aura
execute if score @s PotentialTrigger matches 14 run function job:potentials/dialog/resist
execute if score @s PotentialTrigger matches 15 run function job:potentials/dialog/element
execute if score @s PotentialTrigger matches 22 run function job:potentials/dialog/sublevel
execute if score @s PotentialTrigger matches 31 run scoreboard players set @s PotentialTrigger 131
execute if score @s PotentialTrigger matches 32 run function job:potentials/dialog/reset
execute if score @s PotentialTrigger matches 41..49 run function job:potentials/dialog/add_level