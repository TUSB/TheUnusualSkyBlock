##############################
### 確認処理分岐
##############################

execute if score @s PotentialTrigger matches 11 run function main:settings/potential/cost/dialog
execute if score @s PotentialTrigger matches 12 run function main:settings/potential/interval/dialog
execute if score @s PotentialTrigger matches 13 run function main:settings/potential/aura/dialog
execute if score @s PotentialTrigger matches 14 run function main:settings/potential/resist/dialog
execute if score @s PotentialTrigger matches 21 run function main:settings/potential/critical/dialog
execute if score @s PotentialTrigger matches 22 run function main:settings/potential/sublevel/dialog
execute if score @s PotentialTrigger matches 31 run function main:settings/potential/level/dialog
execute if score @s PotentialTrigger matches 32 run function main:settings/potential/reset/dialog
