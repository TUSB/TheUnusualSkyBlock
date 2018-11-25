##############################
### 確認処理分岐
##############################

### ポイント計算
function main:settings/potential/get_point

execute if score @s PotentialTrigger matches 111 run scoreboard players remove $LeftPoint Global 1
execute if score @s PotentialTrigger matches 112 run scoreboard players remove $LeftPoint Global 1
execute if score @s PotentialTrigger matches 113 run scoreboard players remove $LeftPoint Global 1
execute if score @s PotentialTrigger matches 114 run scoreboard players remove $LeftPoint Global 1
execute if score @s PotentialTrigger matches 121 run scoreboard players remove $LeftPoint Global 2
execute if score @s PotentialTrigger matches 122 run scoreboard players remove $LeftPoint Global 2

execute if score @s PotentialTrigger matches 111 if score $LeftPoint Global matches 0.. run function main:settings/potential/cost/set
execute if score @s PotentialTrigger matches 112 if score $LeftPoint Global matches 0.. run function main:settings/potential/interval/set
execute if score @s PotentialTrigger matches 113 if score $LeftPoint Global matches 0.. run function main:settings/potential/aura/set
execute if score @s PotentialTrigger matches 114 if score $LeftPoint Global matches 0.. run function main:settings/potential/resist/set
execute if score @s PotentialTrigger matches 121 if score $LeftPoint Global matches 0.. run function main:settings/potential/critical/set
execute if score @s PotentialTrigger matches 122 if score $LeftPoint Global matches 0.. run function main:settings/potential/sublevel/set

execute if score @s PotentialTrigger matches 131 if score $LeftPoint Global matches 0.. run function main:settings/potential/level/set
execute if score @s PotentialTrigger matches 132 if score $LeftPoint Global matches 0.. run function main:settings/potential/reset/set

execute if score $LeftPoint Global matches 0.. unless score @s PotentialTrigger matches 131..132 if score @s PotentialTrigger = @s PotentialPrev run function main:settings/potential/common/success
execute if score $LeftPoint Global matches 0.. unless score @s PotentialTrigger matches 131..132 unless score @s PotentialTrigger = @s PotentialPrev run function main:settings/potential/common/sequence
execute if score $LeftPoint Global matches ..-1 unless score @s PotentialTrigger matches 131..132 run function main:settings/potential/common/lack
execute if score @s PotentialTrigger matches 131..132 run function main:settings/potential/common/consume
