#Function
## 防御力計算
# (RageDefense / 40 + 1) 倍の防御力にする 
scoreboard players set _ Calc 40
scoreboard players add _ _ 40
scoreboard players operation @s Defense *= _ _
scoreboard players operation @s SpecialDefense *= _ _
scoreboard players operation @s Defense /= _ Calc
scoreboard players operation @s SpecialDefense /= _ Calc
