#Function
# 無敵解除
effect clear @s resistance
# ChangeTurn Loop:1を行う
data modify storage mob_data: AI.Turn[0].Exit.ChangeTurn set value 1b
data modify storage mob_data: AI.ChangeTurn set value 2
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage mob_data: AI
