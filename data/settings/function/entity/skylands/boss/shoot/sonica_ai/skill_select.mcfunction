#Function
## 乱数で次のスキルを設定する
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.MovePos set from entity @s Pos
execute store result score _ Random run function calc:random
scoreboard players set _ _ 5
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Skill int 1 run scoreboard players operation _ Random %= _ _
