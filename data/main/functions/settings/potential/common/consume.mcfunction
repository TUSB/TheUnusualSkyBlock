##############################
### 潜在能力が引き出された！！
##############################

tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s ["",{"text":" キャパシティポイントを消費した！！","color":"green"}]

function main:settings/potential/save

###---演出---Start
playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 2
###---演出---End

### キャンセル扱いにする
scoreboard players set @s PotentialTrigger 199
