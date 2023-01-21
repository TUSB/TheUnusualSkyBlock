#Function
## 通常 or 慣性モードかの分岐
data modify entity @s Tags set from storage mob_data: Tags
execute if entity @s[tag=!MoveInertia] run function settings:enemy/skylands/boss/shoot/zedra/ai_move1
execute if entity @s[tag=MoveInertia] run function settings:enemy/skylands/boss/shoot/zedra/ai_move1_inertia
